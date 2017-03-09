require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Plugin
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/plugin/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Plugin::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
