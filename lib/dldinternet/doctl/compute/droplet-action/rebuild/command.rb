require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Rebuild
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/rebuild/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Rebuild::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
