require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/plugin/list/command'
require 'dldinternet/doctl/compute/plugin/run/command'

module DLDInternet
  module DOctl
    module Compute
      module Plugin
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/plugin/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Plugin::MixIns::NoCommands

          end

          desc 'list SUBCOMMAND ... ARGS', 'list plugins'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Plugin::List::Command

          desc 'run SUBCOMMAND ... ARGS', 'run plugin'
          subcommand 'runit', ::DLDInternet::DOctl::Compute::Plugin::Run::Command
        end
      end
    end
  end
end
