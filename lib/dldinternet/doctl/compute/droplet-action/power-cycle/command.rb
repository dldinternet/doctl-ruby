require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module PowerCycle
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/power-cycle/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::PowerCycle::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
