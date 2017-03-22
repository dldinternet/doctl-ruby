require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          module Records
            class Update < DLDInternet::DOctl::API::Base

              # noinspection RubyUnnecessaryReturnValue
              def UpdateDomainRecord(domain, record, id)
                client.domain_records.create(record, for_domain: domain, id: id)
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