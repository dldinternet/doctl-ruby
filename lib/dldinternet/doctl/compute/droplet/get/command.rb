require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
