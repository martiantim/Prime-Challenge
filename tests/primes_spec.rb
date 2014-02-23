#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

require 'primes'

describe Primes, "#generate" do
  it "returns empty list for 0" do
    primes = Primes.new

    primes.generate(0).should eq([])
  end

  it "generates the first 3 primes 2,3,5" do
    primes = Primes.new

    expect(primes.generate(3)).to eq([2,3,5])
  end

  it "gives enough primes" do
    primes = Primes.new

    expect(primes.generate(100).length).to eq(100)
  end

end