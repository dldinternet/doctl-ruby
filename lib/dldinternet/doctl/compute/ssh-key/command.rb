require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/ssh-key/list/command'
require 'dldinternet/doctl/compute/ssh-key/get/command'
require 'dldinternet/doctl/compute/ssh-key/create/command'
require 'dldinternet/doctl/compute/ssh-key/import/command'
require 'dldinternet/doctl/compute/ssh-key/delete/command'
require 'dldinternet/doctl/compute/ssh-key/update/command'

module DLDInternet
  module DOctl
    module Compute
      module SshKey
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::MixIns::NoCommands

          end

          desc 'list SUBCOMMAND ... ARGS', 'list ssh keys'
          subcommand 'list', ::DLDInternet::DOctl::Compute::SshKey::List::Command

          desc 'get SUBCOMMAND ... ARGS', 'get ssh key'
          subcommand 'get', ::DLDInternet::DOctl::Compute::SshKey::Get::Command

          desc 'create SUBCOMMAND ... ARGS', 'create ssh key'
          subcommand 'create', ::DLDInternet::DOctl::Compute::SshKey::Create::Command

          desc 'import SUBCOMMAND ... ARGS', 'import ssh key'
          subcommand 'import', ::DLDInternet::DOctl::Compute::SshKey::Import::Command

          desc 'delete SUBCOMMAND ... ARGS', 'delete ssh key'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::SshKey::Delete::Command

          desc 'update SUBCOMMAND ... ARGS', 'update ssh key'
          subcommand 'update', ::DLDInternet::DOctl::Compute::SshKey::Update::Command
        end
      end
    end
  end
end
