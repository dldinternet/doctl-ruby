require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/floating-ip-action/get/command'
require 'dldinternet/doctl/compute/floating-ip-action/assign/command'
require 'dldinternet/doctl/compute/floating-ip-action/unassign/command'

module DLDInternet
  module DOctl
    module Compute
      module FloatingIpAction
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/floating-ip-action/mixins/no_commands'
            include DLDInternet::DOctl::Compute::FloatingIpAction::MixIns::NoCommands

          end

          desc 'get SUBCOMMAND ... ARGS', 'get floating-ip action'
          subcommand 'get', ::DLDInternet::DOctl::Compute::FloatingIpAction::Get::Command

          desc 'assign SUBCOMMAND ... ARGS', 'assign a floating IP to a droplet'
          subcommand 'assign', ::DLDInternet::DOctl::Compute::FloatingIpAction::Assign::Command

          desc 'unassign SUBCOMMAND ... ARGS', 'unassign a floating IP to a droplet'
          subcommand 'unassign', ::DLDInternet::DOctl::Compute::FloatingIpAction::Unassign::Command
        end
      end
    end
  end
end
