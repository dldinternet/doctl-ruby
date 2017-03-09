require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIp
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIp::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
