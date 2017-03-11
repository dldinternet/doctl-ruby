require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          module Records
            class Create < DLDInternet::DOctl::API::Base

              # noinspection RubyUnnecessaryReturnValue
              def CreateDomainRecord(domain, record)
                client.domain_records.create(record, for_domain: domain)
              end

            end
          end
        end
      end
    end
  end
end