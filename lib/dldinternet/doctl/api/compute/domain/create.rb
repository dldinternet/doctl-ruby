require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          class Create < DLDInternet::DOctl::API::Base

            # noinspection RubyUnnecessaryReturnValue
            def CreateDomain(domain, ip_address)
              client.domains.create(Hashie::Mash.new({name: domain, ip_address: ip_address}))
            end

          end
        end
      end
    end
  end
end