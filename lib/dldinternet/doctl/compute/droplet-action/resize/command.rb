require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Resize
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/resize/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Resize::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
