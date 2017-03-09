require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Shutdown
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/shutdown/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Shutdown::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
