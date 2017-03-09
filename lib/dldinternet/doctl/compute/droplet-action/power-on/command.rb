require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module PowerOn
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/power-on/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::PowerOn::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
