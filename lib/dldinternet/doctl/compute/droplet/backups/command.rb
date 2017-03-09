require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Backups
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/backups/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Backups::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
