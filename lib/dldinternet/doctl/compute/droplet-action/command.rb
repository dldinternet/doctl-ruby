require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/droplet-action/get/command'
require 'dldinternet/doctl/compute/droplet-action/disable-backups/command'
require 'dldinternet/doctl/compute/droplet-action/reboot/command'
require 'dldinternet/doctl/compute/droplet-action/power-cycle/command'
require 'dldinternet/doctl/compute/droplet-action/shutdown/command'
require 'dldinternet/doctl/compute/droplet-action/power-off/command'
require 'dldinternet/doctl/compute/droplet-action/power-on/command'
require 'dldinternet/doctl/compute/droplet-action/password-reset/command'
require 'dldinternet/doctl/compute/droplet-action/enable-ipv6/command'
require 'dldinternet/doctl/compute/droplet-action/enable-private-networking/command'
require 'dldinternet/doctl/compute/droplet-action/upgrade/command'
require 'dldinternet/doctl/compute/droplet-action/restore/command'
require 'dldinternet/doctl/compute/droplet-action/resize/command'
require 'dldinternet/doctl/compute/droplet-action/rebuild/command'
require 'dldinternet/doctl/compute/droplet-action/rename/command'
require 'dldinternet/doctl/compute/droplet-action/change-kernel/command'
require 'dldinternet/doctl/compute/droplet-action/snapshot/command'

module DLDInternet
  module DOctl
    module Compute
      module DropletAction
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::MixIns::NoCommands

          end

          desc 'get SUBCOMMAND ... ARGS', 'get droplet action'
          subcommand 'get', ::DLDInternet::DOctl::Compute::DropletAction::Get::Command

          desc 'disable-backups SUBCOMMAND ... ARGS', 'disable backups'
          subcommand 'disable-backups', ::DLDInternet::DOctl::Compute::DropletAction::DisableBackups::Command

          desc 'reboot SUBCOMMAND ... ARGS', 'reboot droplet'
          subcommand 'reboot', ::DLDInternet::DOctl::Compute::DropletAction::Reboot::Command

          desc 'power-cycle SUBCOMMAND ... ARGS', 'power cycle droplet'
          subcommand 'power-cycle', ::DLDInternet::DOctl::Compute::DropletAction::PowerCycle::Command

          desc 'shutdown SUBCOMMAND ... ARGS', 'shutdown droplet'
          subcommand 'shutdown', ::DLDInternet::DOctl::Compute::DropletAction::Shutdown::Command

          desc 'power-off SUBCOMMAND ... ARGS', 'power off droplet'
          subcommand 'power-off', ::DLDInternet::DOctl::Compute::DropletAction::PowerOff::Command

          desc 'power-on SUBCOMMAND ... ARGS', 'power on droplet'
          subcommand 'power-on', ::DLDInternet::DOctl::Compute::DropletAction::PowerOn::Command

          desc 'password-reset SUBCOMMAND ... ARGS', 'password reset droplet'
          subcommand 'password-reset', ::DLDInternet::DOctl::Compute::DropletAction::PasswordReset::Command

          desc 'enable-ipv6 SUBCOMMAND ... ARGS', 'enable ipv6'
          subcommand 'enable-ipv6', ::DLDInternet::DOctl::Compute::DropletAction::EnableIpv6::Command

          desc 'enable-private-networking SUBCOMMAND ... ARGS', 'enable private networking'
          subcommand 'enable-private-networking', ::DLDInternet::DOctl::Compute::DropletAction::EnablePrivateNetworking::Command

          desc 'upgrade SUBCOMMAND ... ARGS', 'upgrade droplet'
          subcommand 'upgrade', ::DLDInternet::DOctl::Compute::DropletAction::Upgrade::Command

          desc 'restore SUBCOMMAND ... ARGS', 'restore backup'
          subcommand 'restore', ::DLDInternet::DOctl::Compute::DropletAction::Restore::Command

          desc 'resize SUBCOMMAND ... ARGS', 'resize droplet'
          subcommand 'resize', ::DLDInternet::DOctl::Compute::DropletAction::Resize::Command

          desc 'rebuild SUBCOMMAND ... ARGS', 'rebuild droplet'
          subcommand 'rebuild', ::DLDInternet::DOctl::Compute::DropletAction::Rebuild::Command

          desc 'rename SUBCOMMAND ... ARGS', 'rename droplet'
          subcommand 'rename', ::DLDInternet::DOctl::Compute::DropletAction::Rename::Command

          desc 'change-kernel SUBCOMMAND ... ARGS', 'change kernel'
          subcommand 'change-kernel', ::DLDInternet::DOctl::Compute::DropletAction::ChangeKernel::Command

          desc 'snapshot SUBCOMMAND ... ARGS', 'snapshot droplet'
          subcommand 'snapshot', ::DLDInternet::DOctl::Compute::DropletAction::Snapshot::Command
        end
      end
    end
  end
end
