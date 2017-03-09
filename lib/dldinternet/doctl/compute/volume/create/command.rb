require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Volume
      module Create
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume/create/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Volume::Create::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
