require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/volume-action/attach/command'
require 'dldinternet/doctl/compute/volume-action/detach/command'

module DLDInternet
  module DOctl
    module Compute
      module VolumeAction
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/volume-action/mixins/no_commands'
            include DLDInternet::DOctl::Compute::VolumeAction::MixIns::NoCommands

          end

          desc 'attach SUBCOMMAND ... ARGS', 'attach a volume'
          subcommand 'attach', ::DLDInternet::DOctl::Compute::VolumeAction::Attach::Command

          desc 'detach SUBCOMMAND ... ARGS', 'detach a volume'
          subcommand 'detach', ::DLDInternet::DOctl::Compute::VolumeAction::Detach::Command
        end
      end
    end
  end
end
