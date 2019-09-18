# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.nil? || arr.empty?
  x = arr.combination(2).select{|x,y| x+y == n}
  return false if x.nil? || x.empty?
  return true
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
 if s.length == 0
   return false
 end
 if /^[^aeiou\W]/i.match(s) == nil
    return false
 else
      return true
 end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if !(s.chars.all? {|x| x =~ /[01]/})
    return false
  end
  if (s.to_i(10) %4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  @isbn = isbn
  @price = price
  raise ArgumentError.new(
    "ISBN should not be an empty string"
  ) if isbn.length == 0
  raise ArgumentError.new(
    "Price cannot be negative or 0"
  ) if price <= 0
end
def isbn
    @isbn
end
def price
  @price
end
def isbn=(isbn) #setter method
    @isbn = isbn
end
def price=(price) #setter method
    @price = price
end
def price_as_string
  "$#{format("%.2f",@price)}"
end
end
