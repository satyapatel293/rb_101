require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  operation = case op
              when "1"
                "Adding"
              when '2'
                "Subtracting"
              when "3"
                "Multiplying"
              when '4'
                "Dividing"
              end

  a = 'something'
  
  operation
end

prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''

  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = ''

  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  prompt(messages('operator_prompt', LANGUAGE))

  operator = ''
  
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('valid_operator', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when "1"
             number1.to_i + number2.to_i
           when "2"
             number1.to_i - number2.to_i
           when "3"
             number1.to_i * number2.to_i
           when "4"
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(messages("calculate_again?", LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('goodbye', LANGUAGE))
