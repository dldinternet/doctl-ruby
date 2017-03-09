require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
