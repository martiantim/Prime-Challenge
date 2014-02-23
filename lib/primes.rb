class Primes

  def generate(n)
    primes = generate_primes_up_to(n**2) #make sure we always get enough
    primes.first(n)
  end

  private

  #Sieve of Eratosthenes
  def generate_primes_up_to(n)
    arr = []
    (2..(n+1)).each { |i| arr[i] = i }

    (2..Math.sqrt(n)).each do |i|
      if arr[i]
        j = i**2
        while (j <= n) do
          arr[j] = nil
          j += i
        end
      end
    end

    arr.compact
  end

end