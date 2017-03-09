require 'dldinternet/doctl/compute/action/command'
require 'dldinternet/doctl/compute/droplet-action/command'
require 'dldinternet/doctl/compute/droplet/command'
require 'dldinternet/doctl/compute/domain/command'
require 'dldinternet/doctl/compute/floating-ip/command'
require 'dldinternet/doctl/compute/floating-ip-action/command'
require 'dldinternet/doctl/compute/image/command'
require 'dldinternet/doctl/compute/image-action/command'
require 'dldinternet/doctl/compute/plugin/command'
require 'dldinternet/doctl/compute/region/command'
require 'dldinternet/doctl/compute/size/command'
require 'dldinternet/doctl/compute/ssh-key/command'
require 'dldinternet/doctl/compute/tag/command'
require 'dldinternet/doctl/compute/volume/command'
require 'dldinternet/doctl/compute/volume-action/command'
require 'dldinternet/doctl/compute/ssh/command'
require 'dldinternet/doctl//compute/action/command'

module DLDInternet
  module DOctl
    module Compute
      class Command < DLDInternet::Thor::Command
        no_commands do

          require 'dldinternet/doctl/compute/mixins/no_commands'
          include DLDInternet::DOctl::Compute::MixIns::NoCommands

        end

        desc 'actions SUBCOMMAND ... ARGS', 'action commands'
        subcommand 'actions', ::DLDInternet::DOctl::Compute::Action::Command

        desc 'droplet-action SUBCOMMAND ... ARGS', 'droplet action commands'
        subcommand 'droplet-action', ::DLDInternet::DOctl::Compute::DropletAction::Command

        desc 'droplet SUBCOMMAND ... ARGS', 'droplet commands'
        subcommand 'droplet', ::DLDInternet::DOctl::Compute::Droplet::Command

        desc 'domain SUBCOMMAND ... ARGS', 'domain commands'
        subcommand 'domain', ::DLDInternet::DOctl::Compute::Domain::Command

        desc 'floating-ip SUBCOMMAND ... ARGS', 'floating IP commands'
        subcommand 'floating-ip', ::DLDInternet::DOctl::Compute::FloatingIp::Command

        desc 'floating-ip-action SUBCOMMAND ... ARGS', 'floating IP action commands'
        subcommand 'floating-ip-action', ::DLDInternet::DOctl::Compute::FloatingIpAction::Command

        desc 'image SUBCOMMAND ... ARGS', 'image commands'
        subcommand 'image', ::DLDInternet::DOctl::Compute::Image::Command

        desc 'image-action SUBCOMMAND ... ARGS', 'image-action commands'
        subcommand 'image-action', ::DLDInternet::DOctl::Compute::ImageAction::Command

        desc 'plugin SUBCOMMAND ... ARGS', 'plugin commands'
        subcommand 'plugin', ::DLDInternet::DOctl::Compute::Plugin::Command

        desc 'region SUBCOMMAND ... ARGS', 'region commands'
        subcommand 'region', ::DLDInternet::DOctl::Compute::Region::Command

        desc 'size SUBCOMMAND ... ARGS', 'size commands'
        subcommand 'size', ::DLDInternet::DOctl::Compute::Size::Command

        desc 'ssh-key SUBCOMMAND ... ARGS', 'sshkey commands'
        subcommand 'ssh-key', ::DLDInternet::DOctl::Compute::SshKey::Command

        desc 'tag SUBCOMMAND ... ARGS', 'tag commands'
        subcommand 'tag', ::DLDInternet::DOctl::Compute::Tag::Command

        desc 'volume SUBCOMMAND ... ARGS', 'volume commands'
        subcommand 'volume', ::DLDInternet::DOctl::Compute::Volume::Command

        desc 'volume-action SUBCOMMAND ... ARGS', 'volume action commands'
        subcommand 'volume-action', ::DLDInternet::DOctl::Compute::VolumeAction::Command

        desc 'ssh SUBCOMMAND ... ARGS', 'ssh to droplet'
        subcommand 'ssh', ::DLDInternet::DOctl::Compute::Ssh::Command

      end
    end
  end
end
