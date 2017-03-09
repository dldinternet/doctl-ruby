#!/usr/bin/env ruby

require 'faraday'

connection = Faraday.new('https://api.digitalocean.com/')
connection.get '/'