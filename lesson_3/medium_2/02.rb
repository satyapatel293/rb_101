a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id


# they all point to the same obj because intergers are immutable in ruby 
#also notes true false and nil will alway point to the same object 
