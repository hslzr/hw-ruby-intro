# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)  
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # It first evaluates it is actually 0
  if arr.empty?
    return true if n == 0
  else
    
    # array.combination(n).to_a permutes a number combinations possible,
    # given each combination contains 'n' members.
    #
    # EXAMPLE
    # a = [1, 2, 3]
    #
    # a.combination(1).to_a => [[1], [2], [3]]
    # a.combination(2).to_a => [[1,2], [1,3], [2,3]]
    # a.combination(3).to_a => [[1,2,3]]
    
    arr.combination(2).to_a.each do |combi|
      
      # If the sum of a given combination totals n, then return true
      return true if sum(combi) == n
    end
  end
  
  return false
end

# Part 2

def hello(name)
  puts "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ %r{\A(?=[^aeiou])(?=[a-z])}i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
