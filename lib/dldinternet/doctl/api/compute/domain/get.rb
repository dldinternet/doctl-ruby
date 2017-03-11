require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          class Get < DLDInternet::DOctl::API::Base

            # noinspection RubyUnnecessaryReturnValue
            def GetDomain(domain)
              client.domains.find(name: domain)
            end

          end
        end
      end
    end
  end
end