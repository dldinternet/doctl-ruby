require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Volume
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Volume::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
