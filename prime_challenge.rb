#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

require 'primes'
require 'prime_table_generator'


if defined?(ARGV) && ARGV.length > 0
  num = ARGV[0].to_i
else
  num = 10
end

puts PrimeTableGenerator.new(Primes.new.generate(num)).to_s