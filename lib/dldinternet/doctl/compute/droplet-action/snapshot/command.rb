require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Snapshot
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/snapshot/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Snapshot::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
