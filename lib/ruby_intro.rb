# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr_sum = 0
  arr.each do | num |
    arr_sum += num
  end
  arr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  sorted_arr = arr.sort.reverse
  sorted_arr[0] + sorted_arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sorted_arr = arr.sort
  i = 0
  j = sorted_arr.length - 1
  while i < j
    if sorted_arr[i] + sorted_arr[j] == n
      return true
    elsif sorted_arr[i] + sorted_arr[j] < n
      i += 1
    elsif sorted_arr[i] + sorted_arr[j] > n
      j -= 1
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[a-z]/i && s =~ /^[^aeiou]/i
    return true
  end
  false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^(0|1)+$/ && s =~ /0*1+(1|0)*00$/ || s =~ /^0+$/
    return true
  end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length == 0
      raise ArgumentError.new("ISBN can't be an empty string.")
    end
    if price <= 0
      raise ArgumentError.new("Price can't be zero or any negative number.")
    end
    
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    if new_isbn.length == 0
      raise ArgumentError.new("ISBN can't be an empty string.")
    end
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError.new("Price can't be zero or any negative number.")
    end
    @price = new_price
  end

  def price_as_string
    "$%0.2f" % [price]
  end
end
