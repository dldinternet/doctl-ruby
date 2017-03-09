module DLDInternet
  module DOctl
    module Compute
      module Droplet
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
