=begin
..........P
input stirng
output boolena 
  rule if string contains a substring that when repeated creates string 

  explicit only lower case english lettes at input string 
..........E
..........D
..........A 
take inputs string 
half string to size-1/2

counter 0
substrings from 0 to half 
    itterate through stirng up to half 
    push stirng [0..counter] 
    check is size % substirng.size == 0 if not next
    if so 
     check multiple substirng by (size/substinrg size) == string
      if so return true 
      end 
    end 

false 
  end 



itterate through holder array 

def reoeated_substring_pattern(string)
  half_string = string.size/2 

  last_index = 0 
  while last_index <= half_string
    substring = string[0..last_index]
    last_index += 1 
    next unless string.size % substring.size == 0 
    multiple = string.size / substring.size
    return true if substring * multiple == string
  end 

  false 
end


p reoeated_substring_pattern('abab')
p reoeated_substring_pattern('aba')
p reoeated_substring_pattern('aabaaba')
p reoeated_substring_pattern('abaababaab')
p reoeated_substring_pattern('abcabcabcabc')
p reoeated_substring_pattern('a')


=end



=begin
...........P
input = two string
output = true or false
  if any portion of str1 can be rearragned to match str2

rules 
    explicit 
    
    implicit 

...........E

scramble('javaass', 'jjss' )
scramble('rkqoldw', 'world')
scramble('scriptjava', 'javascript')
scramble('katas', 'steak')
...........D
array
...........A
copy of str 1 split join 

itterate through string 2
and check is letter is in arraystr 1
if so remove 1 index of letter from arrtring 1
  using sub to remove ''
  if not retrun false 
end

return true 
 


def scramble(str1, str2)
  str1 = str1.split.join
  
  str2.chars.each do |letter|
    return false unless str1.sub!(letter, '')
  end 

  true
end 


p scramble('javaass', 'jjss' )
p scramble('rkqoldw', 'world')
p scramble('scriptjava', 'javascript')
p scramble('katas', 'steak')

=end 



=begin
2:25
--------------------- P
input: array of integers
output: integer
  which is the index N where the the sum of the elements before N is equal to the sum of the 
  elements after N 
rules: 
  Explicit: 
    - the sum of the values bofore index 0 is 0 
    - if there is no index where the goal is met return -1 
  Implicit: 
    - 
    - 
--------------------- E

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) ==0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1 
p find_even_index([0,0,0,0,0]) == 0 #,"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3 
p find_even_index(Array(-100..-1)) == -1


--------------------- D
array 
--------------------- A

loop through the collection with index 
left holder []
right holder []
      if current index is > 0 
        push array 0 to index -1 to left holder 
      if current index if < array size - 1
        push array index +1 to array -1 to right holder  
      end 
    sum right and left holder 
    if sums == then return index 
    end 

    -1 
=
=end

def find_even_index(array)
  
  (0...array.size).each do |index|
    left_values = []
    right_values = []
    left_values += array[0...index] if index > 0 
    right_values += array[(index+1)..-1] if index < array.size - 1 
    return index if left_values.sum == right_values.sum
  end

  -1 
end 


p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) ==0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1 
p find_even_index([0,0,0,0,0]) == 0 #,"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3 
p find_even_index(Array(-100..-1)) == -1