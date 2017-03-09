require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module SshKey
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
