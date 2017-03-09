require 'thor'
require 'awesome_print'

module DLDInternet
  module Thor
    class Command < ::Thor
      class << self

        def namespace
          parts = self.name.split(/::/)
          parts[parts.size > 2 ? -2 : -1].downcase
        end

        # def command(scommand, usage, description, options = {}, &block)
        #   desc usage, description, options
        #   define_method(scommand) do |*args|
        #     args, opts = ::Thor::Arguments.split(args)
        #     block.call(args)
        #   end
        # end
        # alias_method :task, :command
      end

      attr_accessor :formatter, :writer, :notation

      def initialize(args = [], local_options = {}, config = {})
        super(args,local_options,config)
        @log_level = :warn #|| @config[:log_level].to_sym
        @formatter ||= ->(hsh, tit) { default_formatter(hsh, tit) }
        @writer    ||= ->(str) { puts str }
      end
    end
  end
end