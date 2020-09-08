# When done, submit this entire file to the autograder.

# Part 1

# Return the sum of an array
def sum arr
  # define a variable for summing up
  _sum = 0
  
  # add up each number in the given array
  arr.each do |num|
    _sum += num
  end
  
  return _sum
end


# Returns the sum of the two largest elements in the given array.
def max_2_sum arr
  # sort the array
  _sorted_ary = arr.sort_by { |number| number }.reverse

  # if the array is empty, return 0
  return 0 if arr.empty?
  
  # if the array only has one element, return the only element
  return arr[0] if arr.size == 1
  
  # return the largest two  
  return _sorted_ary[0] + _sorted_ary[1]
end


# Returns true if any two elements in the array of integers sum to n.
def sum_to_n? arr, n
  # define a hashmap which stores
  _hash_map = Hash.new
  
  # one pass iteration
  for i in 0..arr.size - 1
    # calculate the complement number
    _complement = n - arr[i]
    
    # check whether the complement occurred before
    if _hash_map.has_key?(_complement)
      return true
    end
    
    # store the current number
    _hash_map[arr[i]] = i
  end
    
  return false
end

# Part 2

# Returns the string "Hello, " concatenated with the name
def hello(name)
  return "Hello, #{name}"
end


VOWEL = ['a', 'e', 'i', 'o', 'u']
# Returns true if it starts with a consonant and false otherwise
def starts_with_consonant? s
  # sanity check
  if s.empty?
    return false
  end
  
  # get the first letter
  _initial = s[0].downcase
  
  # check
  if _initial < 'a' || _initial > 'z'
    return false
  end
  
  return !VOWEL.include?(_initial)
end


# returns true if the string represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
  if s =~ /(^((1|0)*100)$)|(^0$)/
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  
  # constructor
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError, "The ISBN number cannot be empty and the price cannot be less than or equal to 0."
    end
    
    @isbn=isbn
    @price=price
  end
  
  # getters and setters
  attr_accessor :isbn
  attr_accessor :price
  
  # Returns the price of the book formatted with a leading dollar sign and two decimal places.
  def price_as_string
    return "$%.2f" % @price
  end
end
