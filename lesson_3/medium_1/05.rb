limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"






# The error is that when defining a method it is not able to access the 
#limit variable outside its defenitions 

#fixed by adding limit as an argument 
