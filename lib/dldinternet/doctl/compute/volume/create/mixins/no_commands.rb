module DLDInternet
  module DOctl
    module Compute
module Volume
      module Create
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/compute/volume/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Volume::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
