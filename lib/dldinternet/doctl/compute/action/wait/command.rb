require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Action
      module Wait
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/action/wait/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Action::Wait::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
