require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module SshKey
      module Create
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/create/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::Create::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
