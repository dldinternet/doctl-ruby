require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module ListDistribution
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/list-distribution/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::ListDistribution::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
