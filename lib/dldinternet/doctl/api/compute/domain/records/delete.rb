require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          module Records
            class Delete < DLDInternet::DOctl::API::Base

              # noinspection RubyUnnecessaryReturnValue
              def DeleteDomainRecord(domain, id)
                client.domain_records.delete(id: id, for_domain: domain)
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
end