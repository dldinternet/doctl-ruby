require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module VolumeAction
      module Detach
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume-action/detach/mixins/no_commands'
            include DLDInternet::DOctl::Compute::VolumeAction::Detach::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
