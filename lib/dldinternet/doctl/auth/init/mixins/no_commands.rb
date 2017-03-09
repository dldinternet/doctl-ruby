module DLDInternet
  module DOctl
    module Auth
      module Init
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/auth/mixins/no_commands'
            include DLDInternet::DOctl::Auth::MixIns::NoCommands

          end
        end
      end
    end
  end
end
