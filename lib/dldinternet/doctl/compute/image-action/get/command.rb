require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module ImageAction
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image-action/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::ImageAction::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
