require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIpAction
      module Assign
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip-action/assign/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIpAction::Assign::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
