require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Volume
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Volume::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
