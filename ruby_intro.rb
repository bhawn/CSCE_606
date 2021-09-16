# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  array.sum
end

def max_2_sum(array)
  # find sum of 2 largest.
  array.empty? ? 0 : array.sort.last(2).sum
end

def sum_to_n?(array, n)
  # find if sum of any 2 numbers in array is equal to n
  array.combination(2).any? {|x,y| x+y==n}
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant?(s)
  s.start_with?(/[^aeiou_\W]/i)
end

def binary_multiple_of_4?(s)
  s = s.to_i(2) if s.scan(/[^01]/).empty? and !s.empty?  # returns 0 if is not valid binary
  s == 0 ? 0 : s % 4 == 0
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    raise ArgumentError.new(
    ) if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_reader :isbn
  attr_reader :price
  
  def price=(price)
    raise ArgumentError.new(
    ) if price <= 0
    @price = price
  end
  
  def isbn=(isbn)
    raise ArgumentError.new(
    ) if isbn.empty?
    @isbn = isbn
  end
  
  def price_as_string()
    '$%.2f' % price.to_s
  end
  
end
