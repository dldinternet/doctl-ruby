require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Action
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/action/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Action::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
