# ask for tow numbers
# ask the user for an operation to perfrom 
# perfrom the operation on the two numbers
# output the result

# answer = Kernel.gets() 
# Kernel.puts(answer)

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = gets().chomp()

Kernel.puts("What's the second number?")
number2= gets().chomp()

Kernel.puts("What opperation would you like to perfrom? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else 
  # must convert to float in this case because int division always produces an int
  # makes sense on when not to convert string to in immediatly when gets() inputs
  result = number1.to_f() / number2.to_f()
end 

Kernel.puts("The result is #{result}")



# puts ">> First number?"
# num1 = gets.chomp.to_i
# puts ">> Second number?"
# num2 = gets.chomp.to_i
# puts ">> Opperation? (+, -, /, *)"
# opperation = gets.chomp

# case opperation
# when '+' then puts "#{num1} + #{num2} = #{num1 + num2}"
# when '-' then puts "#{num1} - #{num2} = #{num1 - num2}"
# when '*' then puts "#{num1} * #{num2} = #{num1 * num2}"
# when '/' then puts "#{num1} / #{num2} = #{num1 / num2}"
# end

