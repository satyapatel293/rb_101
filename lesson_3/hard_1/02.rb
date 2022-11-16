greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # =>  { :a=> 'hi there' }


=begin
 here informal_greeting is point to the same string "hi" 
 so modifing that string will modify the caller as well 
=end