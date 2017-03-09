require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
      module Domain
        module Records
          module List
            class Command < DLDInternet::Thor::Command
              no_commands do

                require 'dldinternet/doctl/compute/domain/records/list/mixins/no_commands'
                include DLDInternet::DOctl::Compute::Domain::Records::List::MixIns::NoCommands

              end
            end
          end
        end
      end
    end
  end
end
