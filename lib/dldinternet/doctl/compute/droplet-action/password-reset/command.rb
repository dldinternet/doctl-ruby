require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module DropletAction
      module PasswordReset
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet-action/password-reset/mixins/no_commands'
            include DLDInternet::DOctl::Compute::DropletAction::PasswordReset::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
