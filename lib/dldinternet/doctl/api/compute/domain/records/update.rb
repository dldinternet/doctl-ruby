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
              end

            end
          end
        end
      end
    end
  end
end