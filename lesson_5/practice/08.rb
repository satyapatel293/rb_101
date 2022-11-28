hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


# hsh.each do |key, value|
#   value.each do |word| 
#     vowels = word.delete("^aeiou")
#     puts vowels.split('')
#   end
# end 

VOWELS = 'aeiou'

hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |char|
    puts char if VOWELS.include?(char)
    end
  end 
end 