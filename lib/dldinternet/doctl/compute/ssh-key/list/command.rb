require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module SshKey
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh-key/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
