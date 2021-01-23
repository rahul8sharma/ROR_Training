class Prime
  def isPrime?(number)
    return false if (number <= 1)
    2.upto(number - 1) do |i|
      return false if (number % i == 0)
    end

    return true
  end

  def get_n_prime_numbers(n)
    range = *(1..n)
    range.map {|i| i if isPrime?(i) && ((i % 10) != 7)}.compact
  end
end

puts Prime.new.get_n_prime_numbers(100)