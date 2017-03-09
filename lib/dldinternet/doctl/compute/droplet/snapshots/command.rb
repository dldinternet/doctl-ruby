require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Snapshots
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/snapshots/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Snapshots::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
