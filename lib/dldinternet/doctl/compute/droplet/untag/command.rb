require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Untag
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/untag/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Untag::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
