def titlesize(string)
  string.split.map {|word| word.capitalize}.join(' ')
end 

p titlesize('the dog in the park')