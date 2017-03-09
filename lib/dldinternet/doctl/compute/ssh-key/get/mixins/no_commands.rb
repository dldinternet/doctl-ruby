module DLDInternet
  module DOctl
    module Compute
module SshKey
      module Get
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/compute/ssh-key/mixins/no_commands'
            include DLDInternet::DOctl::Compute::SshKey::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
