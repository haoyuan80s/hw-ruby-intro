# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each do |x|
    s += x
  end
  return s
end

def max_2_sum arr
  # # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  m1 = [arr[0],arr[1]].max
  m2 = [arr[0],arr[1]].min
  (2..(arr.length - 1)).each do |i|
    x = arr[i]
    if x > m1
      m1 = x
      m2 = m1
    elsif x > m2
      m2 = x
    end
  end
  #  puts [m1, m2]
  return m1 + m2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  seen_nums = Set.new [arr[0]]
  arr[1, arr.length].each do |x|
    if seen_nums.include? n - x
      return true
    else
      seen_nums.add x
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  if s == '0'
    return true
  end
  s =~ /^[01]*00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'empty isbn error' unless isbn.length >= 1
    raise ArgumentError, 'non positive price error' unless price > 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price
  def price_as_string
    '$%.2f' % (@price)
  end
end
