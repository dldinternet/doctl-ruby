require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIpAction
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip-action/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIpAction::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
