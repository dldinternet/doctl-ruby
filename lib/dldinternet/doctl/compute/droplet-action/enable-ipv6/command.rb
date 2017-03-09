require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module EnableIpv6
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/enable-ipv6/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::EnableIpv6::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
