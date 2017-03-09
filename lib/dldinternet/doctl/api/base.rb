require 'droplet_kit'
require 'droplet_kit/client.rb'
require 'droplet_kit/mappings/account_mapping.rb'
require 'droplet_kit/models/account.rb'

module DropletKit
  class Account < BaseModel
    attribute :droplet_limit
    attribute :floating_ip_limit
    attribute :email
    attribute :uuid
    attribute :email_verified
    attribute :status
    attribute :status_message
  end
end

module DropletKit
  class AccountMapping
    include Kartograph::DSL

    kartograph do
      root_key singular: 'account', scopes: [:read]
      mapping Account

      scoped :read do
        property :droplet_limit
        property :floating_ip_limit
        property :email
        property :uuid
        property :email_verified
        property :status
        property :status_message
      end
    end
  end
end

# module DropletKit
#   class RatelimitMapping
#     include Kartograph::DSL
#
#     kartograph do
#       root_key singular: 'account', scopes: [:read]
#       mapping Account
#
#       scoped :read do
#         property :droplet_limit
#         property :floating_ip_limit
#         property :email
#         property :uuid
#         property :email_verified
#         property :status
#         property :status_message
#       end
#     end
#   end
# end

module DropletKit
  class RatelimitResource < ResourceKit::Resource

    attr :response

    include ErrorHandlingResourcable

    resources do
      default_handler(:ok) {|r|
        #AccountMapping.extract_single(r.body, :read)
        @response = r
      }
      get '/v2/account' => :info
    end
  end
end

module DLDInternet
  module DOctl
    module API
      class Client < ::DropletKit::Client
        def self.resources
          {
              actions: ::DropletKit::ActionResource,
              droplets: ::DropletKit::DropletResource,
              domains: ::DropletKit::DomainResource,
              domain_records: ::DropletKit::DomainRecordResource,
              droplet_actions: ::DropletKit::DropletActionResource,
              images: ::DropletKit::ImageResource,
              image_actions: ::DropletKit::ImageActionResource,
              regions: ::DropletKit::RegionResource,
              sizes: ::DropletKit::SizeResource,
              ssh_keys: ::DropletKit::SSHKeyResource,
              snapshots: ::DropletKit::SnapshotResource,
              account: ::DropletKit::AccountResource,
              ratelimit: ::DropletKit::RatelimitResource,
              floating_ips: ::DropletKit::FloatingIpResource,
              floating_ip_actions: ::DropletKit::FloatingIpActionResource,
              tags: ::DropletKit::TagResource,
              volumes: ::DropletKit::VolumeResource,
              volume_actions: ::DropletKit::VolumeActionResource
          }
        end
      end

      class Base
        attr_reader :options, :logger, :client

        def client
          @client ||= DLDInternet::DOctl::API::Client.new(access_token: options[:access_token])
        end

        def initialize(options, logger=nil)
          @options = options
          @logger  = logger
        end

      end
    end
  end
end