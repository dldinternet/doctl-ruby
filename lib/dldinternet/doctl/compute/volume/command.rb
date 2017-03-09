require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/volume/list/command'
require 'dldinternet/doctl/compute/volume/create/command'
require 'dldinternet/doctl/compute/volume/delete/command'
require 'dldinternet/doctl/compute/volume/get/command'

module DLDInternet
  module DOctl
    module Compute
      module Volume
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Volume::MixIns::NoCommands

          end

          desc 'list SUBCOMMAND ... ARGS', 'list volume'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Volume::List::Command

          desc 'create SUBCOMMAND ... ARGS', 'create a volume'
          subcommand 'create', ::DLDInternet::DOctl::Compute::Volume::Create::Command

          desc 'delete SUBCOMMAND ... ARGS', 'delete a volume'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::Volume::Delete::Command

          desc 'get SUBCOMMAND ... ARGS', 'get a volume'
          subcommand 'get', ::DLDInternet::DOctl::Compute::Volume::Get::Command
        end
      end
    end
  end
end
