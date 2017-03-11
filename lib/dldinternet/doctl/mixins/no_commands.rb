require 'thor'
require 'awesome_print'
require 'yaml'
require 'dldinternet/formatters'
require 'hashie/mash'

module DLDInternet
  module DOctl
    LOG_LEVELS = [:trace, :debug, :info, :note, :warn, :error, :fatal, :todo]

    module MixIns
      module NoCommands
        require 'dldinternet/mixlib/logging'
        include DLDInternet::Mixlib::Logging

        def validate_options
          @options = Hashie::Mash.new(@options.to_h)
          if options[:log_level]
            log_level = options[:log_level].to_sym
            raise "Invalid log-level: #{log_level}" unless LOG_LEVELS.include?(log_level)
            options[:log_level] = log_level
          end
          @options[:log_level] ||= :warn
          @options[:format] ||= @options[:output]
          @options[:output] ||= @options[:format]
        end

        def parse_options
          validate_options

          lcs = ::Logging::ColorScheme.new( 'compiler', :levels => {
              :trace => :blue,
              :debug => :cyan,
              :info  => :green,
              :step  => :green,
              :warn  => :yellow,
              :error => :red,
              :fatal => :red,
              :todo  => :purple,
          })
          scheme = lcs.scheme
          scheme['trace'] = "\e[38;5;33m"
          scheme['fatal'] = "\e[38;5;89m"
          scheme['todo']  = "\e[38;5;55m"
          lcs.scheme scheme
          @config         = @options.dup
          @config[:log_opts] = lambda{|mlll| {
              :pattern      => "%#{mlll}l: %m %g\n",
              :date_pattern => '%Y-%m-%d %H:%M:%S',
              :color_scheme => 'compiler',
              :trace        => (@config[:trace].nil? ? false : @config[:trace]),
              # [2014-06-30 Christo] DO NOT do this ... it needs to be a FixNum!!!!
              # If you want to do ::Logging.init first then fine ... go ahead :)
              # :level        => @config[:log_level],
          }
          }
          @logger = getLogger(@config)

          if @options[:config]
            @options[:config] = File.expand_path(@options[:config])
            if File.exist?(@options[:config])
              begin
                yaml = ::YAML.load(File.read(@options[:config]))
                yaml.each{ |key,value|
                  @options[key.to_s.gsub(%r{[-]},'_')]=value
                }
              rescue ::Exception => e
                @logger.error "#{e.class.name} #{e.message}"
                raise e
              end
            end
          end
          if options[:debug]
            @logger.info "Options:\n#{options.ai}"
          end

        end

        def notation
          @notation ||= @config[:output]
        end

        def default_formatter(obj, title)
          format_helper = DLDInternet::Formatters::Basic.new(obj, notation, title)
          case notation.to_sym
          when :none
          when :basic
          when :text
            # noop
          when :awesome
            format_helper = DLDInternet::Formatters::Awesome.new(obj, notation, title)
          when :json
          when :yaml
          when :table
            format_helper = DLDInternet::Formatters::Table.new(obj, notation, title)
          else
            raise DLDInternet::Formatters::Error, "Unknown format requested: #{notation}"
          end
          format_helper.format_it
        end

        def hash_it(robj)
          klass = robj.class
          repre = begin
            klass.const_get('Representation')
          rescue
            false
          end
          if robj.respond_to?(:to_hash)
            robj.to_hash
          elsif robj.respond_to?(:to_a)
            robj.to_a.map { |obj| hash_it(obj) }
          elsif repre
            representation = repre.new(robj)
            representation.to_hash
          else
            robj.to_h
          end
        end

        def format_it(obj, title = '')
          formatter.call(obj, title)
        end

        def write(obj)
          writer.call(obj)
        end

        def output(obj)
          hash = obj.is_a?(Array) ? obj.map { |o| hash_it(o) } : (obj.is_a?(String) ? obj : hash_it(obj))
          str = format_it(hash)
          write str
        end

        def command_pre(*args)
          parse_options
          @logger.info @_invocations.map{ |_,v| v[0]}.join(' ') if options[:verbose]
        end

        def command_out(res)
          case options[:format]
          when /text|none/
            output header_line unless options[:header] === false
            case res.class.name
            when /Array/
              res.each do |obj|
                output format_line(obj)
              end
            # when /Hash|String/
            else
              output format_line(res)
            end
          else
            output res
          end
        end

        def header_line()
          @header.call()
        end

        def format_line(obj)
          @format.call(obj)
        end

      end
    end
  end
end