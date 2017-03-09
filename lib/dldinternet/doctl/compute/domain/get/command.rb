require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Domain
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/domain/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Domain::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
