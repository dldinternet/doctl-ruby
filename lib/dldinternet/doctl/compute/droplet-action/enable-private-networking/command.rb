require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module EnablePrivateNetworking
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/enable-private-networking/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::EnablePrivateNetworking::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
