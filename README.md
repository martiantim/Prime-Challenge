Prime Challenge
===============

This program prints a multiplication table of primes to STDOUT. By default it will use the first 10 primes but you can give it another number of primes as an argument.

To run:

ruby prime_challenge.rb

To run the tests:

rspec tests/*


NOTES:

> Consider complexity. How fast does your code run? How does it scale?
> Consider cases where we want N primes.

This program is O(n**2log(n**2)) where n is the number of primes desired for the table.

Generating the primes uses the sieve of Eratosthenes which is O(NlogN) when N is the highest number prime desired. For
simplicity we use n**2 for N to be sure to always get enough primes. Printing the printing the table is O(n**2)

This program has a space complexity of O(n**2). This program scales poorly. If it was desired to be run with large values
of n a segmented version of sieve of Eratosthenes would be needed or a more efficient algorithm for generating primes. It
also builds up the prime table in memory before printing it. At large scale it would be better to stream the output.
