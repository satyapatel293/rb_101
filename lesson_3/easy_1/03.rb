advice = "Few things in life are as important as house training your pet dinosaur."


# array = advice.split.map do |word|
#   if word == 'important'
#     word = 'urgent'
#   else 
#     word
#   end 
# end

# advice = array.join(' ')
# puts advice

# This was a very long way of doing this solution shows method called gsub!

puts advice.gsub!('important', 'urgent')