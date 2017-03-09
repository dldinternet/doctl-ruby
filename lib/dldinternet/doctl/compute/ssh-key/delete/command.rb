require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module SshKey
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
