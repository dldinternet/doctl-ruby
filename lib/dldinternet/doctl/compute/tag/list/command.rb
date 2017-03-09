require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Tag
      module List
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/tag/list/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Tag::List::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
