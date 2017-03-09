require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/floating-ip/create/command'
require 'dldinternet/doctl/compute/floating-ip/get/command'
require 'dldinternet/doctl/compute/floating-ip/delete/command'
require 'dldinternet/doctl/compute/floating-ip/list/command'

module DLDInternet
  module DOctl
    module Compute
      module FloatingIp
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIp::MixIns::NoCommands

          end

          desc 'create SUBCOMMAND ... ARGS', 'create a floating IP'
          subcommand 'create', ::DLDInternet::DOctl::Compute::FloatingIp::Create::Command

          desc 'get SUBCOMMAND ... ARGS', 'get the details of a floating IP'
          subcommand 'get', ::DLDInternet::DOctl::Compute::FloatingIp::Get::Command

          desc 'delete SUBCOMMAND ... ARGS', 'delete a floating IP address'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::FloatingIp::Delete::Command

          desc 'list SUBCOMMAND ... ARGS', 'list all floating IP addresses'
          subcommand 'list', ::DLDInternet::DOctl::Compute::FloatingIp::List::Command
        end
      end
    end
  end
end
