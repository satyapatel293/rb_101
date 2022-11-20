flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |element, index|
  if element.start_with?('Be')
    puts index
    break 
  end 
end 

#my solution is wrong this only prints the result does not return it (each_with_index returns self)


p flintstones.index { |name| name[0, 2] == "Be" }