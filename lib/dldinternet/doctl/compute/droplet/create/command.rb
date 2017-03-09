require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Create
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/create/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Create::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
