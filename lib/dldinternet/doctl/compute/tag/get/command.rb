require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Tag
      module Get
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/tag/get/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Tag::Get::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
