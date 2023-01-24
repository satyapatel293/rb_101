=begin

..............P
input 2 strings 
output integer 
rules 
output how many times string 2 shows up in string 1 

..............E
..............D
..............A
get all substrings of string 1 
  itterate through string with index 
  current length = size of string - index 
    loop until length = 0 
      push to hodler arr index, length 
      length -= 1 
  end 

push them into holder array
count how many time string 2 shows up in array

............C
def solution(full_text, search_text)
  substrings = []

  full_text.chars.each_with_index do |_, start|
    idx2 = start
    until idx2 == full_text.size 
      substrings << full_text[start..idx2]
      idx2 += 1 
    end 
  end
  p substrings
  p substrings.count(search_text)
end

solution('abcdeb','b')


=end


=begin
PROBLEM 1
........P
input: array of ints 
output: array of int same size as input array where each element corresponds to the number of element in the array that are smaller than the current element 

rules:
  explicit: 
    - we are looking for values smaller than the current value
    - if the smaller numbers occur multiple times only count them once 
    - 
  implicit: 
    - if no element are smaller than the current element return 0 
    - same size array 
........E
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
........D
array 
........A  
uniq_arr = arr.uniq 

itterate through current array and map 
  the count of element in uniq arrray that are smaller than current element
    end 
that mapped new arry is returned implicitly 


def smaller_numbers_than_current(arr)
  uniq_arr = arr.uniq

  arr.map do |value| 
    uniq_arr.count {|num| num < value}
  end 
end 

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([]) == []


=end


=begin
PROBLEM 2 
........P
input: arr (of ints)
output: integer which represents the lowest sum of 5 consecuvtive values in the array or nil (if array if less than 5 elements)

rules:
  explicit: 
    - return nil if less than 5 element in the arr
    - checking for the lowest sum of 5 consecvtive values 
    - values can be negative 
  implicit: 
    - 
    -  
........E
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
........D
 
........A  
- return nil if input is less than 5 values 

5_consectuvitves = []
itterate through the ARR
  end index = current index + 4 
  if the endindex < the size of the array 
    5_consectuivtees << create subarray ARR[current_index..endindex]
  end 

maps over this check the sum of each of the sub arrays (&:sum)
then return the minmum value from min 

........C
def minimum_sum(arr)
  return nil if arr.size < 5 

  consecutives = []

  arr.each_with_index do |_, start_idx|
    end_idx = start_idx + 4 
    consecutives << arr[start_idx..end_idx] if end_idx < arr.size  
  end 

  consecutives.map!(&:sum)
  consecutives.min
end 



p minimum_sum([1, 2, 3, 4]) #== nil
p minimum_sum([1, 2, 3, 4, 5, 6]) #== 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) #== 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) #== -10

=end



=begin
PROBLEM 3 
........P
input: string
output: string where every 2nd char of every 3rd word is capitalized

rules:
  explicit: 
    - capatilze every 2nd char of every 3rd word in new string
    - if the third word doesn't have a 2nd char do nothing with it 
    - leace all other character alone
  implicit: 
    - returns a new string 
    - words are space separated string 
    - (no alpha character)
........E
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
........D
 
........A  
words array which contains all the space sepearate string 

every 3rd word 
set index to 2 
while index < array size 
  word = ""
    words[index].char.each with index 
    words <<  upcase the char at every odd index 
    words << other otherwise return the word 
    end 
  words[index] = word
end 

  index += 3 
end 
words.join(' ')

.....C 

def to_weird_case(string)
  words = string.split(' ')

  index = 2 
  while index < words.size 
    modified_word = ''
    words[index].chars.each_with_index do |char, index|
      if index.odd?
        modified_word << char.upcase
      else 
        modified_word << char
      end 
    end 
    words[index] = modified_word
    index += 3 
  end 

  words.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') #== 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case( 'Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

=end


=begin
Problem 4

..........P
input: arr of ints
output: arr of 2 values 

rules 
 explicit
  - we are looking to return the 2 nums closest together in value 
  - 
 implicit 
  - has at least 2 values 
  - return the values in the order the are presented in the input array 

..........E
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

..........D
arr 
..........A
initalize an array 'pairs' to hold all the 2 values subarray in the input array 

LOOP over the array (each_withindex) _, idx1 
      initalize a last index = start index + 1 
      while the lastindex is less then arr size 
          pairs << [arr[idx1], arr[idx2]]
        increment idx2 by 1 
      end inner loop 
    end end outter loop 


check this pairs array and 
and return the pair with the lowest absuloute value differnce 
(minby)  {|n,n1| (n - n1).abs}


......C

def closest_numbers(arr)
  pairs = []

  arr.each_with_index do |_, idx1|
    idx2 = idx1 + 1 
    while idx2 < arr.size 
      pairs << [arr[idx1], arr[idx2]]
      idx2 += 1
    end 
  end 

  pairs.min_by do |value1, value2|
    (value1 - value2).abs
  end 
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
=end



=begin
Problem 5

..........P
input: string
output: string (1 char)

rules 
 explicit
  - return the chars that apprear least often in the string
  - if multiple chars have the same lowest number of occurance return the one that appears first
  - uppercase and lower case characters are considered the same 
 implicit 
  - any character count including spaces 
  - 

..........E

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

..........D
hash  
..........A
create empty hash whos keys will be chars and values will be occurance of that charcter in the input string 

take string downcase itthen and converte to array of chars
remove the duplicates 

then itterate over the uniqchars_array of chars 
    create a hash[char] = count of that charcter in orginal array 
  end 

initalize min occurance to hash and find the min value values. min 
then select only element who are equal to minim value nest subarray
and take the first element first eleent 

......C

def least_common_char(string)
  occurances = Hash.new(0)

  uniq_chars = string.downcase.chars.uniq

  uniq_chars.each do |char| 
    occurances[char] = string.downcase.count(char)
  end     

  min_occurances = occurances.values.min

  occurances.select! {|letter, occurance| occurance == min_occurances}

  occurances.keys.first
end 

=end
### using Enumerable#$tally is super fast way of doing this! 
def least_common_char(string)
  total_per_char = string.downcase.chars.tally
  min_count = total_per_char.values.min
  total_per_char.min_by {|char, value| value}.first
  # total_per_char.keys.first
end 
#### 

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'


