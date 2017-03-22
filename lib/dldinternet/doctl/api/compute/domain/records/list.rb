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