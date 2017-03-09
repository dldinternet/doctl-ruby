module DLDInternet
  module DOctl
    module Compute
module FloatingIp
      module Delete
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/compute/floating-ip/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIp::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
