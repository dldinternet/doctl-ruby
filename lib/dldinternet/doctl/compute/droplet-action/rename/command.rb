require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Rename
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/rename/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Rename::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
