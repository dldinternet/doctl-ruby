require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module DisableBackups
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/disable-backups/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::DisableBackups::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
