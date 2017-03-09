require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/action/get/command'
require 'dldinternet/doctl/compute/action/list/command'
require 'dldinternet/doctl/compute/action/wait/command'

module DLDInternet
  module DOctl
    module Compute
      module Action
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/action/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Action::MixIns::NoCommands

          end

          desc 'get SUBCOMMAND ... ARGS', 'get action'
          subcommand 'get', ::DLDInternet::DOctl::Compute::Action::Get::Command

          desc 'list SUBCOMMAND ... ARGS', 'list actions'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Action::List::Command

          desc 'wait SUBCOMMAND ... ARGS', 'wait for action to complete'
          subcommand 'wait', ::DLDInternet::DOctl::Compute::Action::Wait::Command
        end
      end
    end
  end
end
