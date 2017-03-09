require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
module Plugin
      module Run
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/plugin/run/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Plugin::Run::MixIns::NoCommands

          end
        end
      end
    end
end
  end
end
