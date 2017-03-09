require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Tag
      module Delete
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/tag/delete/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Tag::Delete::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
