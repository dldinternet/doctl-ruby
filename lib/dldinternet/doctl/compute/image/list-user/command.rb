require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Image
      module ListUser
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/image/list-user/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Image::ListUser::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
