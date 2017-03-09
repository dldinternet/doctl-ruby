require 'dldinternet/doctl/api/base'

module DLDInternet
  module DOctl
    module API
      module NameServers
        class Get < DLDInternet::DOctl::API::Base

          require 'dldinternet/doctl/api/auth/mixins/get/getnameservers'
          include DLDInternet::DOctl::API::Auth::MixIns::Get::GetNameServers

        end
      end
    end
  end
end