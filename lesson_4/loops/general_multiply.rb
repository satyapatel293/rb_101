def double_numbers(numbers, multiply)
  doubled = []
  counter = 0

  loop do
    break if counter == numbers.size

    doubled << numbers[counter] * multiply
    counter += 1
  end

  doubled
end



my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers, 3) # => [2, 8, 6, 14, 4, 12]