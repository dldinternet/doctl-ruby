require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Tag
      module Update
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/tag/update/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Tag::Update::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
