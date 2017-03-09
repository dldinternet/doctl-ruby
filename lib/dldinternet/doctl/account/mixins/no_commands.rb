module DLDInternet
  module DOctl
    module Account
      module MixIns
        module NoCommands
          require 'dldinternet/doctl/mixins/no_commands'
          include DLDInternet::DOctl::MixIns::NoCommands
        end
      end
    end
  end
end