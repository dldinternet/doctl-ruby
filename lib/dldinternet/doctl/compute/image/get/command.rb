require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
