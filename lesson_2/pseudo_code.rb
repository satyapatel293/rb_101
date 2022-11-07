=begin 

1) a method that returns the sum of two integers
GET 2 intergers from user 
set int1 and int2 
SET sum = int1 + int2
RETURN sum 

____________________________________________________________
2) a method that takes an array of strings, and returns a string that is all those strings concatenated together

input = array of strings
SET whole_string to empty string

itterate through array 
  - SET whole_string to whole_string + current value 

return whole string 
____________________________________________________________
3) a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:

# Given an array of intergers 
Create blank newarray 
iterate throught intarray 
  - for each value at an even index
  add to blank array 

return newarray
____________________________________________________________
4) a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

START
# given a string 
# SET our_char to choice 

SET counter to 0

itterate through string characters 
  - if current char == saved char 
    - add 1 to counter 
  if counter = 3 
  return index of current char 
  else 
    nil
end 

___________________________________________
5) a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:

given array1 
given array2 

array 3 = []
counter = array1 length 
for each value in counter 
  - remove first value of array1 and add to array 3 
  - remove first value of array2 and add to array 3 

print array 3 


def merged(a,b)
  c = []
  i = 0  
  while i < a.length
    c.push(a.pop)
    c.push(b.pop) 
    i += 1
 end
 c
end 
