require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module PowerOff
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/power-off/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::PowerOff::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
