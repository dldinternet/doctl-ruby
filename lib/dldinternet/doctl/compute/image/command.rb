require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/image/list/command'
require 'dldinternet/doctl/compute/image/list-distribution/command'
require 'dldinternet/doctl/compute/image/list-application/command'
require 'dldinternet/doctl/compute/image/list-user/command'
require 'dldinternet/doctl/compute/image/get/command'
require 'dldinternet/doctl/compute/image/update/command'
require 'dldinternet/doctl/compute/image/delete/command'

module DLDInternet
  module DOctl
    module Compute
      module Image
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::MixIns::NoCommands

          end

          desc 'list SUBCOMMAND ... ARGS', 'list images'
          subcommand 'list', ::DLDInternet::DOctl::Compute::Image::List::Command

          desc 'list-distribution SUBCOMMAND ... ARGS', 'list distribution images'
          subcommand 'list-distribution', ::DLDInternet::DOctl::Compute::Image::ListDistribution::Command

          desc 'list-application SUBCOMMAND ... ARGS', 'list application images'
          subcommand 'list-application', ::DLDInternet::DOctl::Compute::Image::ListApplication::Command

          desc 'list-user SUBCOMMAND ... ARGS', 'list user images'
          subcommand 'list-user', ::DLDInternet::DOctl::Compute::Image::ListUser::Command

          desc 'get SUBCOMMAND ... ARGS', 'Get image'
          subcommand 'get', ::DLDInternet::DOctl::Compute::Image::Get::Command

          desc 'update SUBCOMMAND ... ARGS', 'Update image'
          subcommand 'update', ::DLDInternet::DOctl::Compute::Image::Update::Command

          desc 'delete SUBCOMMAND ... ARGS', 'Delete image'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::Image::Delete::Command
        end
      end
    end
  end
end
