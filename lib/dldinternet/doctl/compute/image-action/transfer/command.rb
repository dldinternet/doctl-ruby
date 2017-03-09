require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module ImageAction
      module Transfer
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image-action/transfer/mixins/no_commands'
            include DLDInternet::DOctl::Compute::ImageAction::Transfer::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
