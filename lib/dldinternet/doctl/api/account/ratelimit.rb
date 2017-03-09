require 'dldinternet/doctl/api/base'

module DLDInternet
  module DOctl
    module API
      module Account
        class Ratelimit < DLDInternet::DOctl::API::Base

          # noinspection RubyUnnecessaryReturnValue
          def GetRatelimit()

            res = client.ratelimit.info()
            res = res.headers.select! { |k,v| k =~ /^ratelimit/ }
            res['ratelimit-reset'] = Time.at(res['ratelimit-reset'].to_i)
            res
          end

        end
      end
    end
  end
end