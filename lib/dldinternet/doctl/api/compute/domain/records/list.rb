require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          module Records
            class List < DLDInternet::DOctl::API::Base

              # noinspection RubyUnnecessaryReturnValue
              def GetDomainRecordsList(domain)
                list = []
                client.domain_records.all(for_domain: domain).each do |page|
                  list << page
                end
                list
              end
            end
          end
        end
      end
    end
  end
end