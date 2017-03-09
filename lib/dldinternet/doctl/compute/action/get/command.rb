require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Action
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/action/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Action::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
