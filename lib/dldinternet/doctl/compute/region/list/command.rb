require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Region
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/region/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Region::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
