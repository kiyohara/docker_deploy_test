#!/usr/bin/env ruby

require 'awesome_print'
require 'webrick'

include WEBrick

puts 'running test.rb'.cyan

server = HTTPServer.new(
  Port: 8080,
  DocumentRoot: File.join(Dir::pwd, 'public_html')
)
trap('INT') do
  server.shutdown
end
server.start
