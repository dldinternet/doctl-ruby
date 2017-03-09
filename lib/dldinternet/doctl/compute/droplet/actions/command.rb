require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Actions
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/actions/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Actions::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
