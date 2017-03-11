module DLDInternet
  module DOctl
    module Compute
module Domain
      module Records
        module MixIns
          module NoCommands

            require 'dldinternet/doctl/compute/domain/mixins/no_commands'
            include DLDInternet::DOctl::Compute::Domain::MixIns::NoCommands

            def headers(command, obj)
              @headers[command].call(obj)
            end

            def records_formats
              formats = Hashie::Mash.new({
                                   ID: [ :id, '%-16s', :to_s ],
                                   Type: [ :type, '%-8s', :to_s ],
                                   Name: [ :name, '%-24s', :to_s ],
                                   Data: [ :data, '%-24s', :to_s ],
                                   Priority: [ :priority, '%-24s', :to_i ],
                                   Port: [ :port, '%-8s', :to_i ],
                                   Weight: [ :weight, '%-8s', :to_i ],
                               })
              format_names = options[:format_string].split(/,/)
              format_templ = format_names.map { |name| formats[name][1] }.join('')

              @header = -> { sprintf(format_templ, *format_names) }
              @format = ->(o) {
                sprintf(format_templ, *(format_names.map{ |n|
                  if o.respond_to?(formats[n][0])
                    o.send(formats[n][0]).send(formats[n][2])
                  else
                    $stderr.write "#{n} not in #{o.class.name}::#{hash_it(o)}\n"
                    ''
                  end
                })) }
            end

            def record_from_options
              map = Hashie::Mash.new({
                  record_type: :type,
                  record_name: :name,
                  record_data: :data,
                  record_priority: :priority,
                  record_port: :port,
                  record_weight: :weight,
              })
              record = Hashie::Mash.new
              options.each do |k,v|
                record[map[k]] = v if map.has_key?(k)
              end
              record
            end
          end
        end
      end
    end
end
  end
end
