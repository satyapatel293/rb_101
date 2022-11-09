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

prompt("Welcome to Car Payement Calculator! Enter your name:")
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  loan_amount = ''
  loop do
    prompt "What's the amount of the loan in dollars?"
    print "$"
    loan_amount = gets.chomp

    if number?(loan_amount)
      break
    else
      prompt "Hmm.. that doesn't look like a valid number"
    end
  end

  duration = ''
  loop do
    prompt "What's the durration of the loan in years?"
    duration = gets.chomp

    if number?(duration)
      break
    else
      prompt "Hmm.. that doesn't look like a valid timeline"
    end
  end

  apr = ''
  loop do
    prompt "What is the Annual Percentage Rate (APR)?
    (ex. 12 for 12%)"
    apr = gets.chomp

    if number?(apr)
      break
    else
      prompt "Hmm.. that doesn't look like a valid percentage"
    end
  end

  monthly_intrest = apr.to_f / 100 / 12
  durration_in_months = duration.to_f * 12
  monthly_payment = loan_amount.to_f *
                    (monthly_intrest / 
                    (1 - (1 + monthly_intrest)**(-durration_in_months)))

  prompt("Your monthly payment is $#{monthly_payment.round(2)}")
  prompt("Your monthly intrest is #{(monthly_intrest * 100).round(2)}%")
  prompt("Total of #{durration_in_months.to_i} payments")

  prompt("Do you want to perform another calculation?(Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you #{name} for using the Car Payment Calculator. Good bye!")
