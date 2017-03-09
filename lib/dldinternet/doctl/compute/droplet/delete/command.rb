require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
