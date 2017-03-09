require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIp
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIp::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
