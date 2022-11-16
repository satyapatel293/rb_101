# puts "the value of 40 + 2 is " + (40 + 2)

# this will be an error because you cannot add string and int types 

#can fix with string interpolation
puts "the value of 40 + 2 is #{40 + 2}"

#or converting int to string 
puts "the value of 40 + 2 is " + (40 + 2).to_s
