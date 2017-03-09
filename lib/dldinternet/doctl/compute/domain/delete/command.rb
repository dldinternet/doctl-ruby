require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Domain
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/domain/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Domain::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
