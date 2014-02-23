#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

require 'primes'
require 'prime_table_generator'

describe PrimeTableGenerator, "#to_s" do
  it "contains the right number of columns" do
    gen = PrimeTableGenerator.new([2])

    table = gen.to_s

    expect(table.split(/\n/).first.scan(/\d+/).length).to eq(1)
  end

  it "contains the right number of rows" do
    table = PrimeTableGenerator.new([2,3,5]).to_s

    expect(table.split(/\n/).length).to eq(5)
  end

  it "has the proper products" do
    table = PrimeTableGenerator.new([2,3,5]).to_s

    expect(table.split(/\n/)[2].scan(/\d+/)).to eq(["2", "4", "6", "10"])
  end

  it "works with Primes Class" do
    table = PrimeTableGenerator.new(Primes.new.generate(10)).to_s

    expect(table.split(/\n/).last.scan(/\d+/).last).to eq("841")
  end

end