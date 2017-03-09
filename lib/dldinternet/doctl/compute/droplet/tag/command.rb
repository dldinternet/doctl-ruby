require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Droplet
      module Tag
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/droplet/tag/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Droplet::Tag::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
