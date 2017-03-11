require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          class Delete < DLDInternet::DOctl::API::Base

            # noinspection RubyUnnecessaryReturnValue
            def DeleteDomain(domain)
              client.domains.delete(name: domain)
            end

          end
        end
      end
    end
  end
end