require 'dldinternet/thor/command'
require 'dldinternet/doctl/version'
require 'dldinternet/doctl/account/command'
require 'dldinternet/doctl/auth/command'
require 'dldinternet/doctl/compute/command'

module DLDInternet
  module DOctl
    class Main < DLDInternet::Thor::Command
      class_option :verbose,      type: :boolean
      class_option :debug,        type: :boolean
      class_option :trace,        type: :boolean
      class_option :log_level,    type: :string, banner: 'Log level ([:trace, :debug, :info, :step, :warn, :error, :fatal, :todo])'
      class_option :output,       type: :string, default: :text, aliases: ['--format']
      class_option :access_token, type: :string
      class_option :config,       type: :string, default: '~/.config/doctl/config.yaml'

      no_commands do

        require 'dldinternet/doctl/mixins/no_commands'
        include DLDInternet::DOctl::MixIns::NoCommands

      end

      desc 'account SUBCOMMAND ... ARGS', 'do domains'
      subcommand 'account', ::DLDInternet::DOctl::Account::Command

      desc 'auth SUBCOMMAND ... ARGS', 'do domains'
      subcommand 'auth', ::DLDInternet::DOctl::Auth::Command

      desc 'compute SUBCOMMAND ... ARGS', 'do domains'
      subcommand 'compute', ::DLDInternet::DOctl::Compute::Command

      desc 'version', 'Version'
      def version()
        parse_options
        @logger.info "version" if options[:verbose]

        output "#{self.class.namespace}(ruby) version #{::DLDInternet::DOctl::VERSION}"
        0
      end
    end
  end
end