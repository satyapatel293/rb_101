=begin
---------------P
Input: no input
output: UUID string which consists of 32hexadecimal chars broken into string of 8-4-4-4-12
rules: 
  explicit: 
  - write a method that created a UUID 
  - it takes no parameters 
  - UUID is a 32 char hexadecmial number 
  - split into 8 - 4 - 4 - 12 character 
  -

---------------E
"f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
---------------D

---------------A
set arry with values for heacadecmials 
use random to pick random number between 1-F for 32digit string 
split by position at  
return the string 
=end



def uuid_generator 
  heacadecmials = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

  uuid = ''
  counter = 1 
  while counter < 37 
    dashes = [9, 14, 19, 24 ]
    dashes.include?(counter) ? uuid << "-" : uuid << heacadecmials.sample  
    counter += 1 
  end 
  uuid 
end 



# trying thier method with sections


def generate_uuid 
  character = []
  (0..9).each {|char| character << char.to_s}
  ('a'..'f').each {|char| character << char}

  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { |_| uuid += character.sample}
    uuid += '-' unless index >= sections.size - 1
  end  

  uuid
end 

puts generate_uuid
