# ask user for 2 numbers
# ask user what operation to perform
# perform operation on the 2 nums
# output result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i() != 0
end

def operation_to_message(operator)
  case operator
  when 1
    "Adding"
  when 2
    "Subtracting"
  when 3
    "Multiplying"
  when 4
    "Dividing"
  end
end

def number?(num)
  if num.class != Fixnum
    puts "OORRIIIIII"
  end
end

prompt("Welcome to Calculator! What is your name?")
name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    Kernel.puts("That is not a valid name. Please, what is your name?")
  else
    break
  end
end

Kernel.puts("Hello #{name}!")

loop do # MAIN LOOP
  number1 = ""
  number2 = ""
  operator = ""

  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp().to_i
    if valid_number?(number1)
      break
    else
      prompt("That is not a valid number. Try again")
    end
  end

  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp().to_i
    if valid_number?(number2)
      break
    else
      prompt("That is not a valid number. Try again")
    end
  end

  operator_message = <<-MSG
    What is the operation you want to perform?
    1 to add
    2 to subtract
    3 to multiply
    4 to divide
  MSG
  prompt(operator_message)

  loop do
    operator = Kernel.gets().chomp().to_i
    if [1, 2, 3, 4].include?(operator)
      break
    else
      prompt("That is not a valid operation. You must type either 1, 2, 3, or 4. Try again")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  result = case operator
            when 1
              number1 + number2
            when 2
              number1 - number2
            when 3
              number1 * number2
            when 4
              number1.to_f / number2.to_f
  end

  Kernel.puts("The result is #{result}")
  Kernel.puts("Would you like to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp().downcase()
  break unless answer.start_with?("y")
end # END MAIN LOOP

Kernel.puts("Thank you for using the Calculator, #{name}. Have a nice day!")
