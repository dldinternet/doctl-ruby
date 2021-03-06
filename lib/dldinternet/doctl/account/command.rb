require 'dldinternet/doctl/api/account'

module DLDInternet
  module DOctl
    module Account
      class Command < DLDInternet::Thor::Command
        no_commands do

          require 'dldinternet/doctl/account/mixins/no_commands'
          include DLDInternet::DOctl::Account::MixIns::NoCommands

        end

        desc 'get', 'get account'
        def get()
          command_pre
          @header = ->{ sprintf('%-30s%-14s%-16s%-52s%s', 'Email','Droplet Limit','Email Verified',	'UUID', 'Status') }
          @format = ->(res) { sprintf('%-30s%-14s%-16s%-52s%s', res['email'], res['droplet_limit'], res['email_verified'], res['uuid'], res['status'] ) }
          res = DLDInternet::DOctl::API::Account::Get.new(options, @logger).GetAccount()
          command_out(res)
          0
        end
=begin
Limit	Remaining	Reset
5000	4980		2017-03-08 17:13:06 -0500 EST
=end
        desc 'ratelimit', 'get API rate limits'
        def ratelimit()
          command_pre
          @header = -> { sprintf('%-7s%-10s%s', 'Limit','Remaining', 'Reset') }
          @format = ->(res) { sprintf('%-7s%-10s%s', res['ratelimit-limit'], res['ratelimit-remaining'], res['ratelimit-reset'] ) }
          res = DLDInternet::DOctl::API::Account::Ratelimit.new(options, @logger).GetRatelimit()
          command_out(res)
          0
        end
      end
    end
  end
end
