require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
