require 'dldinternet/doctl/api/base'

module DLDInternet
  module DOctl
    module API
      module Account
        class Get < DLDInternet::DOctl::API::Base

          # noinspection RubyUnnecessaryReturnValue
          def GetAccount()
            client.account.info()
          end

        end
      end
    end
  end
end
