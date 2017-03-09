module DLDInternet
  module DOctl
    module Compute
      module Plugin
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/compute/mixins/no_commands'
            include DLDInternet::DOctl::Compute::MixIns::NoCommands

          end
        end
      end
    end
  end
end
