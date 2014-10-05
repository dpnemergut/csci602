# Assignment 1
# Collaborators:
#  Daniel Nemergut
#  Garrett Stauber
#  Clint

# Define a method sum which takes an array of integers as an argument
# and returns the sum of its elements. For an empty array it should
# return zero.
def sum(array)
  sum = 0

  array.each { |number|
    sum += number
  }

  return sum
end

raise 'sum([]) != 0' unless sum([]) == 0
raise 'sum([1,2]) != 3' unless sum([1,2]) == 3
raise 'sum([4,5,6,7]) != 22' unless sum([4,5,6,7]) == 22

# Define a method max_2_sum which takes an array of integers as an argument
# and returns the sum of its two largest elements. For an empty array it
# should return zero. For an array with just one element, it should return
# that element.
def max_2_sum(int_array)
  return 0 if int_array.size == 0
  return int_array[0] if int_array.size == 1

  int_array.sort!
  return (int_array[int_array.length - 2] + int_array[int_array.length - 1])
end

raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
raise 'max_2_sum([4]) != 4' unless max_2_sum([4]) == 4
raise 'max_2_sum([1,2,3,4,5]) != 9' unless max_2_sum([1,2,3,4,5]) == 9


# Define a method sum_to_n? which takes an array of integers and an additional
# integer, n, as arguments and returns true if any two distinct elements in
# the array of integers sum to n. An empty array or single element array
# should both return false.

def sum_to_n?(array, n)
  return false if array.length < 2

  for i in 0..array.length - 2
    for j in i+1..array.length - 1
      return true if array[i] + array[j] == n
    end
  end

  return false
end

raise 'sum_to_n?([], 0) != false' unless sum_to_n?([], 0) == false
raise 'sum_to_n?([22], 22) != false' unless sum_to_n?([22], 22) == false
raise 'sum_to_n?([7,4,3,0], 32) != false' unless sum_to_n?([7,4,3,0], 32) == false
raise 'sum_to_n?([7,4,3,0], 7) != true' unless sum_to_n?([7,4,3,0], 7) == true
