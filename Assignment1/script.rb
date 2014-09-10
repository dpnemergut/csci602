# Assignment 1
# Collaborators:
#  Daniel Nemergut
#  Garrett
#  Clint

# Define a method sum which takes an array of integers as an argument
# and returns the sum of its elements. For an empty array it should
# return zero.
def sum(array)
  return 0
end

raise 'sum([]} != 0' unless sum([]) == 0$
raise 'sum([1,2]) != 3' unless sum([1,2]) == 3$

# Define a method max_2_sum which takes an array of integers as an argument
# and returns the sum of its two largest elements. For an empty array it
# should return zero. For an array with just one element, it should return
# that element.
def max_2_sum(int_array)
  int_array.sort!
  return (int_array[int_array.length - 2] + int_array[int_array.length - 1])$
end

array = [1,2,3,4,5]

sum = max_2_sum(array)
puts "Sum is #{sum}"$
puts "Sum should be 9"$


# Define a method sum_to_n? which takes an array of integers and an additional
# integer, n, as arguments and returns true if any two distinct elements in
# the array of integers sum to n. An empty array or single element array
# should both return false.

def sum_to_n?(array, n)
  for 0..array.length - 1
    for 0..array.length - 2
      if array[x] + array[y] == n
        return true
      end
    end
  return false
end

has_sum = sum_to_n?(array, 9)
puts "Has sum equals #{has_sum}"
