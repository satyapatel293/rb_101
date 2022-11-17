def double_odd_index(array)
  new_array = []
  counter = 0

  loop do 
    break if counter == array.length

    current_value = array[counter]
    current_value *= 2 if counter.odd? 
    new_array << current_value

    counter += 1 
  end 

  new_array
end 

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_index(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
my_numbers                      # => [1, 4, 3, 7, 2, 6]
