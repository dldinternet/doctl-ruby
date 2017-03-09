require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
      module Ssh
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/ssh/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Ssh::MixIns::NoCommands

          end
        end
      end
    end
  end
end
