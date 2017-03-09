require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIp
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIp::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
