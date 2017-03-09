require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Kernels
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/kernels/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Kernels::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
