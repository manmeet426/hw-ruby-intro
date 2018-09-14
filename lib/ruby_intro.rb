# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  # sort the array and return the sum of the last 2 elements
  return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # false for empty and single element arrays
  # find a combination of two elements with sum equal to n.
  # if found return true
  # else return false
  if arr.length == 1 || arr.length == 0
    return false
  elsif arr.combination(2).find{|x,y| x+y==n}.nil? == false
    return true
  else
    return false
  end  

end

#puts(sum_to_n?([-1,-2,3,4,5,-8],12))





# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # if : start of string is a consonant return true
  # else return false
  # ^ sign as represents start of the string. If the string starts with a consonant (ranges defined in code) followed by any characters 
  # return true ignoring the case.
  if s =~ /^[B-DF-HJ-NP-TV-Z](.*)/i
    return true
  else
    return false
  end  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # if string contains a binary number 
  if s =~ /^[10]*00$/ || s == "0"
    return true
  else
    return false
  end  
end

#puts(binary_multiple_of_4?("0"))

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    # validating isbn and price
    # if price is not positive or isbn is empty string
    # raise ArgumentError
    raise ArgumentError.new("ISBN not valid") if isbn == ""
    raise ArgumentError.new("Price must be positive") if price <= 0
    @isbn = isbn
    @price = price
  end  
  # setters and getters
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    # format the price to 2 decimal places 
    return "$"+sprintf('%.2f', price).to_s
  end  
end

#book1 = BookInStock.new("10",11.3)
#puts(book1.isbn)
#puts(book1.price)
#puts(book1.price_as_string)