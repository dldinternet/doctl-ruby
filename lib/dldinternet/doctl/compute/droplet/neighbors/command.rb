require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Neighbors
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/neighbors/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Neighbors::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
