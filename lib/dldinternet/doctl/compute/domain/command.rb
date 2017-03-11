require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/domain/records/command'

module DLDInternet
  module DOctl
    module Compute
      module Domain
        class Command < DLDInternet::Thor::Command
          no_commands do

            require 'dldinternet/doctl/compute/domain/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Domain::MixIns::NoCommands

          end

          desc 'list ARGS', 'list domains'
          def list()
            command_pre
            res = DLDInternet::DOctl::API::Compute::Domain::List.new(options, @logger).GetDomainList()
            @header = -> { sprintf('%-17s%s', 'Domain', 'TTL') }
            @format = ->(obj) { sprintf('%-17s%s', obj[:name], obj[:ttl] ) }
            command_out(res)
            # case options[:format]
            # when /text|none/
            #   output sprintf('%-17s%s', 'Domain', 'TTL')
            #   res.each do |obj|
            #     output sprintf('%-17s%s', obj[:name], obj[:ttl] )
            #   end
            # else
            #   output res
            # end
            0
          end

          desc 'get SUBCOMMAND ... ARGS', 'get domain'
          method_option :header,            type: :boolean, desc: 'show/hide headers', default: true
          method_option :format_string,     type: :string, desc: 'Columns for output in a comma seperated list. Possible values: Domain,TTL', default: 'Domain,TTL'
          def get(domain)
            formats = Hashie::Mash.new({
                                           Domain: [ :name, '%-16s', :to_s ],
                                           TTL: [ :ttl, '%-6s', :to_i ],
                                       })
            format_names = options[:format_string].split(/,/)
            format_templ = format_names.map { |name| formats[name][1] }.join('')

            @header = -> { sprintf(format_templ, *format_names) }
            @format = ->(o) {
              # h = Hashie::Mash.new(hash_it(o))
              sprintf(format_templ, *(format_names.map{ |n|
                if o.respond_to?(formats[n][0])
                  o.send(formats[n][0]).send(formats[n][2])
                else
                  $stderr.write "#{n} not in #{o.class.name}::#{hash_it(o)}\n"
                  ''
                end
              })) }
            command_pre(domain)
            command_out(DLDInternet::DOctl::API::Compute::Domain::Get.new(options, @logger).GetDomain(domain))
            0
          end

          desc 'create ARGS', 'create domain'
          method_option :header,            type: :boolean, desc: 'show/hide headers', default: true
          method_option :format_string,     type: :string, desc: 'Columns for output in a comma seperated list. Possible values: Domain,TTL', default: 'Domain,TTL'
          method_option :ip_address,        type: :string, desc: 'IP address', required: true
          def create(domain)
            formats = Hashie::Mash.new({
                                           Domain: [ :name, '%-16s', :to_s ],
                                           TTL: [ :ttl, '%-6s', :to_i ],
                                       })
            format_names = options[:format_string].split(/,/)
            format_templ = format_names.map { |name| formats[name][1] }.join('')

            @header = -> { sprintf(format_templ, *format_names) }
            @format = ->(o) {
              # h = Hashie::Mash.new(hash_it(o))
              sprintf(format_templ, *(format_names.map{ |n|
                if o.respond_to?(formats[n][0])
                  o.send(formats[n][0]).send(formats[n][2])
                else
                  $stderr.write "#{n} not in #{o.class.name}::#{hash_it(o)}\n"
                  ''
                end
              })) }
            command_pre(domain)
            command_out(DLDInternet::DOctl::API::Compute::Domain::Create.new(options, @logger).CreateDomain(domain, options[:ip_address]))
            0
          end

          desc 'delete SUBCOMMAND ... ARGS', 'delete droplet'
          def delete(domain)
            @header = -> {  }
            @format = ->(o) { o.ai }
            command_pre(domain)
            command_out(DLDInternet::DOctl::API::Compute::Domain::Delete.new(options, @logger).DeleteDomain(domain))
            0
          end

          desc 'records SUBCOMMAND ... ARGS', 'domain record commands'
          subcommand 'records', ::DLDInternet::DOctl::Compute::Domain::Records::Command
        end
      end
    end
  end
end
