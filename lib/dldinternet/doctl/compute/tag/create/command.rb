require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Tag
      module Create
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/tag/create/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Tag::Create::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
