require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/size/list/command'

module DLDInternet
  module DOctl
    module Compute
      module Size
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/size/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Size::MixIns::NoCommands

          end

          desc 'list SUBCOMMAND ... ARGS', 'list sizes'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Size::List::Command
        end
      end
    end
  end
end
