#!/usr/bin/env ruby

require 'awesome_print'
require 'mixlib/shellout'
require 'hashie/mash'
require 'fileutils'

DOCTL              = 'doctl'
AVAILABLE_COMMANDS = 'Available Commands:'
FLAGS              = 'Flags:'
GLOBAL_FLAGS       = 'Global Flags:'
DIR                = File.dirname(__FILE__)
PATH               = File.realpath(File.join(File.dirname(__FILE__), '../lib/dldinternet/doctl'))

def camelCase(str)
  str.split(/[_\-]/).map{ |w| w.capitalize }.join('')
end

def getCommandsandFlags(command)
  cmd = Mixlib::ShellOut.new("#{command} --help")
  cmd.run_command
  cmd.error!

  lines = (cmd.stdout.empty? ? cmd.stderr : cmd.stdout).split(%r{\n}).map! { |l| l.chomp }
  # lines = cmd.stdout.split(%r{\n}).map! { |l| l.chomp }

  hflgs = {}
  hcmds = {}

  if lines.include?(AVAILABLE_COMMANDS)
    map = Hash[lines.map.with_index.to_a]

    acmds = map[AVAILABLE_COMMANDS]
    flags = if lines.include?(FLAGS)
      map[FLAGS]
    elsif lines.include?(GLOBAL_FLAGS)
      map[GLOBAL_FLAGS]
    else
      -1
    end
    lcmds = lines[acmds+1..flags-1].select { |l| l =~ %r{^\s+} }
    hcmds = Hash[lcmds.map { |s|
      ss = s.gsub(%r{^\s+}, '')
      ss = ss.gsub(%r{(\S+)\s+(.*)$}, '\1,\2')
      ss.split(/,/)
    }]

    if lines.include?(FLAGS)
      lflgs = lines[flags+1..-2].select { |l| l =~ %r{^\s+} }
      lflgs.each { |s|
        ss      = s.gsub(%r{^\s+}, '')
        matches = ss.match(%r{^(-[a-z]|),?\s*--([a-z\-]+)\s(\S+|)\s+([^()]*)(\(.*\)|)$})
        if matches
          all, short, option, type, help, default = matches.to_a
          # ap matches.to_a
          hflgs[option] = {
              'short'   => short,
              'type'    => type,
              'help'    => help,
              'default' => default.gsub(%r{\(default\s+(is\s+|)(.*?)\)}, '\2').gsub(%r{['"]}, '')
          }
        end
      }
    # else
    #   $stderr.write "command: #{command}\nout: #{cmd.stdout}\nerr: #{cmd.stderr}\n"
    end
  # else
  #   raise "command: #{command}\nout: #{cmd.stdout}\nerr: #{cmd.stderr}\n"
  end

  { commands: hcmds, flags: hflgs }
end

def command(path, modjul, com)
  File.write(File.join(path, com, 'command.rb'), <<-HERE
require 'dldinternet/doctl/api/#{modjul[0]}'

module DLDInternet
  module DOctl
    #{modjul.map { |mod| "module #{camelCase(mod)}" }.join("\n")}
      module #{camelCase(com)}
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/#{modjul.join('/')}/#{com}/mixins/no_commands'
            include DLDInternet::DOctl::#{modjul.map { |mod| camelCase(mod) }.join('::')}::#{camelCase(com)}::MixIns::NoCommands

          end
        end
      end
    #{modjul.map { |mod| "end" }.join("\n")}
  end
end
  HERE
  )
end

def noCommands(path, modjul, com)
  FileUtils.mkdir_p(File.join(path, com, 'mixins'))
  File.write(File.join(path, com, 'mixins/no_commands.rb'), <<-HERE
module DLDInternet
  module DOctl
    #{modjul.map { |mod| "module #{camelCase(mod)}" }.join("\n")}
      module #{camelCase(com)}
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/#{modjul.join('/')}/mixins/no_commands'
            include DLDInternet::DOctl::#{modjul.map { |mod| camelCase(mod) }.join('::')}::MixIns::NoCommands

          end
        end
      end
    #{modjul.map { |mod| "end" }.join("\n")}
  end
end
  HERE
  )
end

def checkCommand(commandstring, path, modjul=[], command=nil)
  res         = getCommandsandFlags(commandstring)
  unless command
    commandfile = File.join(path, 'main.rb')
    $stderr.write "#{commandfile}\n" unless File.exist?(commandfile)
  end
  newmodlist = command ? (modjul+[command]).flatten : modjul

  res[:commands].each do |cmd, help|
    case cmd
    when 'version'
    else
      commandfile = File.join(path, cmd, 'command.rb')
      unless File.exist?(commandfile)
        modcmdfile = "#{path}/command.rb"
        modcmdlines = File.readlines(modcmdfile)
        reqline = "require 'dldinternet/doctl/#{newmodlist.join('/')}/#{cmd}/command'\n"
        requires = modcmdlines.select { |l| l =~ /^require/ }
        unless requires.include?(reqline)
          puts "#{modcmdfile}:\n"
          puts reqline

          descline = %(desc '#{cmd} SUBCOMMAND ... ARGS', '#{help}')
          subcmdline = modcmdlines.include?("#{descline}\n") ? '' : <<-HERE

          #{descline}
          subcommand '#{cmd}', ::DLDInternet::DOctl::#{newmodlist.map { |mod| camelCase(mod) }.join('::')}::#{camelCase(cmd)}::Command
          HERE
          # puts subcmdline
          modcmdlines = modcmdlines[requires.size..-1]
          requires << reqline
          File.write(modcmdfile, requires.join('')+modcmdlines.join('')+subcmdline)
        end
        $stderr.write "#{commandfile}\n"
        noCommands(path, newmodlist, cmd)
        command(path, newmodlist, cmd)
      end
      checkCommand("#{commandstring} #{cmd}", File.join(path, cmd), newmodlist, cmd)
    end
  end
end

# Get started ...
commandstring = DOCTL

# Get the output of doctl and see the options and commands ...
checkCommand(commandstring, PATH)
