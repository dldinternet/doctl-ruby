require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module ListApplication
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/list-application/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::ListApplication::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
