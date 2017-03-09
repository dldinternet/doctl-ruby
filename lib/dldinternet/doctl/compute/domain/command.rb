require 'dldinternet/doctl/api/compute'
require 'dldinternet/doctl/compute/domain/create/command'
require 'dldinternet/doctl/compute/domain/get/command'
require 'dldinternet/doctl/compute/domain/delete/command'
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

          desc 'create SUBCOMMAND ... ARGS', 'create domain'
          subcommand 'create', ::DLDInternet::DOctl::Compute::Domain::Create::Command
=begin
Domain		      TTL
dldinternet.com	1800
fl-hg.com	1800
=end
          desc 'list ARGS', 'list domains'
          def list()
            parse_options
            @logger.info "domain list" if options[:verbose]
            res = DLDInternet::DOctl::API::Compute::Domain::List.new(options, @logger).GetDomainList()
            case options[:format]
            when /text|none/
              output sprintf('%-17s%s', 'Domain', 'TTL')
              res.each do |obj|
                output sprintf('%-17s%s', obj[:name], obj[:ttl] )
              end
            else
              output res
            end
            1
          end

          desc 'get SUBCOMMAND ... ARGS', 'get domain'
          subcommand 'get', ::DLDInternet::DOctl::Compute::Domain::Get::Command

          desc 'delete SUBCOMMAND ... ARGS', 'delete droplet'
          subcommand 'delete', ::DLDInternet::DOctl::Compute::Domain::Delete::Command

          desc 'records SUBCOMMAND ... ARGS', 'domain record commands'
          subcommand 'records', ::DLDInternet::DOctl::Compute::Domain::Records::Command
        end
      end
    end
  end
end
