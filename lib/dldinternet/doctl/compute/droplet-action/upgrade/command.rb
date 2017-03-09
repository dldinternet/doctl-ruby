require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Upgrade
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/upgrade/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Upgrade::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
