require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Domain
module Records
      module Update
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/domain/records/update/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Domain::Records::Update::MixIns::NoCommands

          end
        end
      end
    end
end
end
  end
end
