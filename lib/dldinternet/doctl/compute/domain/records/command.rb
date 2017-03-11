require 'dldinternet/doctl/api/compute'

module DLDInternet
  module DOctl
    module Compute
      module Domain
        module Records
          class Command < DLDInternet::Thor::Command
            no_commands do

              require 'dldinternet/doctl/compute/domain/records/mixins/no_commands'
              include DLDInternet::DOctl::Compute::Domain::Records::MixIns::NoCommands

            end

            desc 'list ARGS', 'list records'
            method_option :domain_name,       type: :string, desc: 'Domain name'
            method_option :header,            type: :boolean, desc: 'show/hide headers', default: true
            method_option :format_string,     type: :string, desc: 'Columns for output in a comma seperated list. Possible values: ID,Type,Name,Data,Priority,Port,Weight', default: 'ID,Type,Name,Data,Priority,Port,Weight'
            def list(domain)
              records_formats
              command_pre(domain)
              command_out(DLDInternet::DOctl::API::Compute::Domain::Records::List.new(options, @logger).GetDomainRecordsList(domain))
              0
            end

            desc 'create ARGS', 'create record'
            method_option :header,          type: :boolean, desc: 'show/hide headers', default: true
            method_option :format_string,   type: :string,  desc: 'Columns for output in a comma seperated list. Possible values: ID,Type,Name,Data,Priority,Port,Weight', default: 'ID,Type,Name,Data,Priority,Port,Weight'
            method_option :record_name,     type: :string,  desc: 'Record name', required: true
            method_option :record_type,     type: :string,  desc: 'Record type', required: true
            method_option :record_data,     type: :string,  desc: 'Record data', required: true
            method_option :record_port,     type: :numeric, desc: 'Record port', default: nil
            method_option :record_priority, type: :numeric, desc: 'Record priority', default: nil
            method_option :record_weight,   type: :numeric, desc: 'Record weight', default: nil
            def create(domain)
              records_formats
              command_pre(domain)
              command_out(DLDInternet::DOctl::API::Compute::Domain::Records::Create.new(options, @logger).CreateDomainRecord(domain, record_from_options))
              0
            end

            desc 'delete ARGS', 'delete record'
            method_option :header,          type: :boolean, desc: 'show/hide headers', default: true
            method_option :format_string,   type: :string,  desc: 'Columns for output in a comma seperated list. Possible values: ID,Type,Name,Data,Priority,Port,Weight', default: 'ID,Type,Name,Data,Priority,Port,Weight'
            def delete(domain, id)
              # @header = -> {  }
              # @format = ->(o) { o.ai }
              records_formats
              command_pre(domain)
              DLDInternet::DOctl::API::Compute::Domain::Records::Delete.new(options, @logger).DeleteDomainRecord(domain, id)
              command_out(DLDInternet::DOctl::API::Compute::Domain::Records::List.new(options, @logger).GetDomainRecordsList(domain))
              0
            end

            desc 'update ARGS', 'update record'
            method_option :header,          type: :boolean, desc: 'show/hide headers', default: true
            method_option :format_string,   type: :string,  desc: 'Columns for output in a comma seperated list. Possible values: ID,Type,Name,Data,Priority,Port,Weight', default: 'ID,Type,Name,Data,Priority,Port,Weight'
            method_option :record_id,       type: :numeric, desc: 'Record ID',   required: true
            method_option :record_name,     type: :string,  desc: 'Record name', required: true
            method_option :record_type,     type: :string,  desc: 'Record type', required: true
            method_option :record_data,     type: :string,  desc: 'Record data', required: true
            method_option :record_port,     type: :numeric, desc: 'Record port', default: nil
            method_option :record_priority, type: :numeric, desc: 'Record priority', default: nil
            method_option :record_weight,   type: :numeric, desc: 'Record weight', default: nil
            def update(domain)
              records_formats
              command_pre(domain)
              res = DLDInternet::DOctl::API::Compute::Domain::Records::Update.new(options, @logger).UpdateDomainRecord(domain, record_from_options, options[:record_id])
              command_out(res)
              res = DLDInternet::DOctl::API::Compute::Domain::Records::Delete.new(options, @logger).DeleteDomainRecord(domain, options[:record_id])
              command_out(DLDInternet::DOctl::API::Compute::Domain::Records::List.new(options, @logger).GetDomainRecordsList(domain))
              0
            end
          end
        end
      end
    end
  end
end
