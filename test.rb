#!/usr/bin/env ruby

require 'awesome_print'
require 'webrick'

include WEBrick

puts 'running test.rb'.cyan

here = File.dirname(__FILE__)

server = HTTPServer.new(
  Port: 8080,
  DocumentRoot: File.join(here, 'public_html')
)
trap('INT') do
  server.shutdown
end
server.start
