require 'hashie/mash'

module DLDInternet
  module DOctl
    module API
      module Compute
        module Domain
          class List < DLDInternet::DOctl::API::Base

            # noinspection RubyUnnecessaryReturnValue
            def GetDomainList()
              list = []
              client.domains.all().each do |page|
                list << page
              end
            end

          end
        end
      end
    end
  end
end