require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Size
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/size/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Size::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
