require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/region/list/command'

module DLDInternet
  module DOctl
    module Compute
      module Region
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/region/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Region::MixIns::NoCommands

          end

          desc 'list SUBCOMMAND ... ARGS', 'list regions'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Region::List::Command
        end
      end
    end
  end
end
