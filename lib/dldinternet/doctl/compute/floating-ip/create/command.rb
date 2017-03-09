require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module FloatingIp
      module Create
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip/create/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIp::Create::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
