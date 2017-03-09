require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/tag/create/command'
require 'dldinternet/doctl/compute/tag/get/command'
require 'dldinternet/doctl/compute/tag/list/command'
require 'dldinternet/doctl/compute/tag/update/command'
require 'dldinternet/doctl/compute/tag/delete/command'

module DLDInternet
  module DOctl
    module Compute
      module Tag
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/tag/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Tag::MixIns::NoCommands

          end

          desc 'create SUBCOMMAND ... ARGS', 'create tag'
          subcommand 'create', ::DLDInternet::DOctl::Compute::Tag::Create::Command

          desc 'get SUBCOMMAND ... ARGS', 'get tag'
          subcommand 'get', ::DLDInternet::DOctl::Compute::Tag::Get::Command

          desc 'list SUBCOMMAND ... ARGS', 'list tags'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Tag::List::Command

          desc 'update SUBCOMMAND ... ARGS', 'update tag'
          subcommand 'update', ::DLDInternet::DOctl::Compute::Tag::Update::Command

          desc 'delete SUBCOMMAND ... ARGS', 'delete tag'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::Tag::Delete::Command
        end
      end
    end
  end
end
