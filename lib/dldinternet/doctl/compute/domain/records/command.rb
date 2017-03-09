require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/domain/records/list/command'
require 'dldinternet/doctl/compute/domain/records/create/command'
require 'dldinternet/doctl/compute/domain/records/delete/command'
require 'dldinternet/doctl/compute/domain/records/update/command'

module DLDInternet
  module DOctl
    module Compute
      module Domain
        module Records
          class Command < DLDInternet::Thor::Command
            no_commands do

              require 'dldinternet/doctl/compute/domain/records/mixins/no_commands'
              include DLDInternet::DOctl::Compute::Domain::Records::MixIns::NoCommands

            end

            desc 'list SUBCOMMAND ... ARGS', 'list records'
            subcommand 'list', ::DLDInternet::DOctl::Compute::Domain::Records::List::Command

            desc 'create SUBCOMMAND ... ARGS', 'create record'
            subcommand 'create', ::DLDInternet::DOctl::Compute::Domain::Records::Create::Command

            desc 'delete SUBCOMMAND ... ARGS', 'delete record'
            subcommand 'delete', ::DLDInternet::DOctl::Compute::Domain::Records::Delete::Command

            desc 'update SUBCOMMAND ... ARGS', 'update record'
            subcommand 'update', ::DLDInternet::DOctl::Compute::Domain::Records::Update::Command
          end
        end
      end
    end
  end
end
