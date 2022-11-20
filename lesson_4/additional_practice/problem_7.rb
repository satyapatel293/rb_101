statement = "The Flintstones Rock"

all_letters = statement.chars
all_letters.delete(' ')

p all_letters.uniq.each_with_object({}) {|letter, hash| hash[letter] = all_letters.count(letter) } 
  


=begin
split string into character
another array of uinque characters 
count # of charcters per character 
push to hash

=end 

