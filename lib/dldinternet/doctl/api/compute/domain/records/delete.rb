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
              end

            end
          end
        end
      end
    end
  end
end