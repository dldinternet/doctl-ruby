require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/image-action/get/command'
require 'dldinternet/doctl/compute/image-action/transfer/command'

module DLDInternet
  module DOctl
    module Compute
      module ImageAction
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image-action/mixins/no_commands'
            include DLDInternet::DOctl::Compute::ImageAction::MixIns::NoCommands

          end

          desc 'get SUBCOMMAND ... ARGS', 'get image action'
          subcommand 'get', ::DLDInternet::DOctl::Compute::ImageAction::Get::Command

          desc 'transfer SUBCOMMAND ... ARGS', 'transfer image'
          subcommand 'transfer', ::DLDInternet::DOctl::Compute::ImageAction::Transfer::Command
        end
      end
    end
  end
end
