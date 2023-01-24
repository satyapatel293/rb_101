# RB Advanced PEDAC

# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=begin
--------------- P
# Goal: Find and return an integer which represents the minimum length of a consecutive set of array elements which when summed are greater than or equal to a given integer.

# Rules
INPUT: an array of integers and a single integer
OUTPUT: an integer
- array elements are integers, postive or zero
- no empty arrays
- array size is variable
- if none of the elements sum to >= the input integer return 0

--------------- E
[2, 3, 1, 2, 4, 3], 7 == 2
[1, 10, 5, 2, 7], 9) == 1
[1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
[1, 2, 4], 8) == 0

[2, 3, 1, 2, 4, 3]
2, 2
2, 3
2, 1
...
3, 3
3, 1
...

--------------- D
Array

--------------- A
# Notes: 
- Iterate over the input array and find all possible sub arrays of consecutive elements
[2, 3, 1, 2, 4, 3] -> 2 , 2-3, 2-3-1 
  - Initialize a range from 0 to the array size noninclusive with block variable as the start index for another inner range
    initialize an empty subarrays array
    Create an inner range from the start index to the array size noninclusive with block variable for the end index
      pass into the subarray elements from the input array starting at the start index var
      to the end index var if the sum of the subarray elements is >= the input integer
  - Iterate over the subarrays array and sort each subarray by length
  - return the length of the subarray at index 0

=end

def minSubLength(array, integer)
  valid_subarrays = (0...array.size).each_with_object([]) do |start_index, subarrays|
    (start_index...array.size).each do |end_index|
      subarrays << array[start_index..end_index] if array[start_index..end_index].sum >= integer
    end
  end

  return 0 if valid_subarrays.empty?

  sorted_valid_subarrays = valid_subarrays.sort_by do |subarr|
    subarr.length
  end

  sorted_valid_subarrays[0].length
end



p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0