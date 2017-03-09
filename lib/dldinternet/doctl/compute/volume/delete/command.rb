require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Volume
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Volume::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
