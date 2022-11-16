def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end


#change the test condition of to check while greater than 0 will allow us to break out of the loop
# number % 0 == 0 is our condtion to check if the divisor is a factor of number
# line 8 is giving us the return value of the method 