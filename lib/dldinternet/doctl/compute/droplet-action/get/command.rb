require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
