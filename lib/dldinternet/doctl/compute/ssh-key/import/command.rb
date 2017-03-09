require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module SshKey
      module Import
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/import/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::Import::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
