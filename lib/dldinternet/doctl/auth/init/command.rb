require 'dldinternet/doctl/api/auth'

module DLDInternet
  module DOctl
    module Auth
      module Init
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/auth/init/mixins/no_commands'
            include DLDInternet::DOctl::Auth::Init::MixIns::NoCommands

          end
        end
      end
    end
  end
end
