require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
