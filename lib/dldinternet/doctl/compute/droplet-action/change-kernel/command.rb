require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module ChangeKernel
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/change-kernel/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::ChangeKernel::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
