require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIpAction
      module Unassign
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip-action/unassign/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIpAction::Unassign::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
