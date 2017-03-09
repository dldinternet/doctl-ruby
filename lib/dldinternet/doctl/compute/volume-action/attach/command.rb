require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module VolumeAction
      module Attach
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume-action/attach/mixins/no_commands'
            include DLDInternet::DOctl::Compute::VolumeAction::Attach::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
