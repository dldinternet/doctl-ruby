require 'hashie/mash'
require 'json'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          class Create < DLDInternet::DOctl::API::Base

            # noinspection RubyUnnecessaryReturnValue
            def CreateDomain(domain, ip_address)
              client.domains.create(Hashie::Mash.new({name: domain, ip_address: ip_address}))
            rescue ::DropletKit::Error => e
              if matches = e.message.match(%r{^([0-9]{3}):\s+(\{.*\})\s*$})
                json = JSON.parse(matches[2])
                @logger.fatal json['message']
              else
                @logger.fatal e.message
              end
              exit 1
            end

          end
        end
      end
    end
  end
end