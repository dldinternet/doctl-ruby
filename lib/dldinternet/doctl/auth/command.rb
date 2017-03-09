require 'dldinternet/doctl/auth/init/command'

module DLDInternet
  module DOctl
    module Auth
      class Command < DLDInternet::Thor::Command
        no_commands do

          require 'dldinternet/doctl/auth/mixins/no_commands'
          include DLDInternet::DOctl::Auth::MixIns::NoCommands

        end

        desc 'init SUBCOMMAND ... ARGS', 'initialize configuration'
        subcommand 'init', ::DLDInternet::DOctl::Auth::Init::Command
      end
    end
  end
end
