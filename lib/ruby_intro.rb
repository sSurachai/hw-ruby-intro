# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  complements = {}
  arr.each do |element|
    complement = n - element
    return true if complements[complement]
    complements[element] = true
  end

  # If we reach this point, no two elements sum up to n
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)
  s[0].match?(/^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4? s
  return false unless s.match?(/^[01]+$/)
  number = s.to_i(2)
  number % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
    raise ArgumentError, "`isbn` should not be empty!" if isbn.length == 0
    raise ArgumentError, "`price` should not be less than or equal to zero!" if price <= 0
    
    @isbn = isbn
    @price = price
  end

  def price_as_string
  "$%.2f" % @price
  end
end
