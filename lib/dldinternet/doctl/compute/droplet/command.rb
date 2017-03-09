require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/droplet/actions/command'
require 'dldinternet/doctl/compute/droplet/backups/command'
require 'dldinternet/doctl/compute/droplet/create/command'
require 'dldinternet/doctl/compute/droplet/delete/command'
require 'dldinternet/doctl/compute/droplet/get/command'
require 'dldinternet/doctl/compute/droplet/kernels/command'
require 'dldinternet/doctl/compute/droplet/list/command'
require 'dldinternet/doctl/compute/droplet/neighbors/command'
require 'dldinternet/doctl/compute/droplet/snapshots/command'
require 'dldinternet/doctl/compute/droplet/tag/command'
require 'dldinternet/doctl/compute/droplet/untag/command'

module DLDInternet
  module DOctl
    module Compute
      module Droplet
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::MixIns::NoCommands

          end

          desc 'actions SUBCOMMAND ... ARGS', 'droplet actions'
          subcommand 'actions', ::DLDInternet::DOctl::Compute::Droplet::Actions::Command

          desc 'backups SUBCOMMAND ... ARGS', 'droplet backups'
          subcommand 'backups', ::DLDInternet::DOctl::Compute::Droplet::Backups::Command

          desc 'create SUBCOMMAND ... ARGS', 'create droplet'
          subcommand 'create', ::DLDInternet::DOctl::Compute::Droplet::Create::Command

          desc 'delete SUBCOMMAND ... ARGS', 'Delete droplet by id or name'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::Droplet::Delete::Command

          desc 'get SUBCOMMAND ... ARGS', 'get droplet'
          subcommand 'get', ::DLDInternet::DOctl::Compute::Droplet::Get::Command

          desc 'kernels SUBCOMMAND ... ARGS', 'droplet kernels'
          subcommand 'kernels', ::DLDInternet::DOctl::Compute::Droplet::Kernels::Command

          desc 'list SUBCOMMAND ... ARGS', 'list droplets'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Droplet::List::Command

          desc 'neighbors SUBCOMMAND ... ARGS', 'droplet neighbors'
          subcommand 'neighbors', ::DLDInternet::DOctl::Compute::Droplet::Neighbors::Command

          desc 'snapshots SUBCOMMAND ... ARGS', 'snapshots'
          subcommand 'snapshots', ::DLDInternet::DOctl::Compute::Droplet::Snapshots::Command

          desc 'tag SUBCOMMAND ... ARGS', 'tag'
          subcommand 'tag', ::DLDInternet::DOctl::Compute::Droplet::Tag::Command

          desc 'untag SUBCOMMAND ... ARGS', 'untag'
          subcommand 'untag', ::DLDInternet::DOctl::Compute::Droplet::Untag::Command
        end
      end
    end
  end
end
