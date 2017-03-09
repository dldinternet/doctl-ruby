require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module Update
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/update/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::Update::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
