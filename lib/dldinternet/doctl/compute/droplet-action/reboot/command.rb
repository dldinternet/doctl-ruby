require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Reboot
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/reboot/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Reboot::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
