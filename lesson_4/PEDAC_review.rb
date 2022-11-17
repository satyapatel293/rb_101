# Intro to PEDAC

=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target
=end

# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]

=begin
----------------- P
Input: Array of positive integers, target integer
Output: Indices of the two integers in the given array that add up to the target integer

Two integers in a given array will add up to the given target interger. Find the index of each of those integers and return them in an array!

Implicit Rules:
- The indices returned should be in ascending order
- We cannot have the same index twice
- The indices have to be elements in an array

----------------- E
[2, 11, 7, 15], 9 == [0, 2]
2 + 7 -> 9
[3, 2, 4], 6 == [1, 2]
2 + 4 -> 6
[3, 3], 6 == [0, 1]
3 + 3 -> 6

[2, 11, 7, 15], 9 == [0, 2]
2, 11, 7, 15
outer = 2
inner = 2 --> skip
inner = 11 --> add
...
outer = 11
inner = 2

----------------- A
Set an empty array variable
Iterate through the Array
Select each array element and set as current value
Add the following integers to the current value, making sure to exclude the current index of the current variable
  - Create inner loop: iterate through the array again
    - Make sure we do not add the same element/integer to itself
       - If current index equals index of current value skip to next element
    - Add every integer to every other integer
    If the sum is equal to target integer, add index to the empty array, otherwise skip
    if total == 6 break out of loops 
=end

def two_sum(array, target)
  final_indices = []

  array.each_with_index do |out_element, out_index|
    array.each_with_index do |inner_element, inner_index|
      next if out_index == inner_index
      if out_element + inner_element == target
        final_indices.push(out_index, inner_index)
      end
    end 
    break if final_indices.length == 2
  end

  final_indices
end 

p two_sum([2, 11, 7, 15], 9) == [0, 2]
p two_sum([3, 2, 4], 6) == [1, 2]
p two_sum([3, 3], 6) == [0, 1]
