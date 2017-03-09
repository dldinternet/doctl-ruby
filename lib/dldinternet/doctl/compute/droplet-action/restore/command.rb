require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Restore
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/restore/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Restore::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
