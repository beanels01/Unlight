require 'find'
require 'pathname'
require 'optparse'
require 'fileutils'
OUTPUT = false
opt = OptionParser.new

filename = "../src/server_ip.rb"

file = Pathname.new(filename)
ip =  "localhost"

file.open('w') {|f| f.puts DATA.read.gsub('__IP__',ip)}

__END__

module Unlight
  SV_IP = "__IP__"
end
