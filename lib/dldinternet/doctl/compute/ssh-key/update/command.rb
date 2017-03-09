require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module SshKey
      module Update
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/update/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::Update::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
