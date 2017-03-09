require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Domain
      module Create
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/domain/create/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Domain::Create::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
