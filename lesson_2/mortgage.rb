


INTEREST_RATE = 0.005
monthly_payment = ""
total_borrowed = ""
term_length = ""


def prompt(message)
  puts "=> #{message}"  
end

def is_numeric?(obj) 
   obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
end


prompt "WELCOME TO THE MORTGAGE CALCULATOR"

loop do 

  loop do 
    prompt "What is the total total amount you borrowed?"
    total_borrowed = gets.chomp
    if is_numeric?(total_borrowed) && total_borrowed != nil
      break
    else
      prompt "This is not a valid number. Accepted are only positive numbers."
    end
  end

  loop do
    prompt "What is the length of the period over which the repayment will be made?"
    term_length = gets.chomp
    if is_numeric?(term_length) && term_length != nil
      break
    else
      prompt "This is not a valid number. Accepted are only positive numbers."
    end
  end
  
  total_borrowed = total_borrowed.to_f
  term_length = term_length.to_f
  monthly_payment = total_borrowed * (INTEREST_RATE * (1 + INTEREST_RATE) * term_length) / ((1 + INTEREST_RATE) * term_length - 1)

  prompt "Would you like to calculate one more mortgage? y for yes, n for no"
  answer = gets.chomp
  loop do
    if answer == "y"
      prompt "OK, lets do another one."
      # answer = gets.chomp
      break
    elsif answer == "n"
      break
    else
      prompt "Say what? y for yes, n for no"
      answer = gets.chomp
    end
  end

  break if answer == "n"

end
puts " ** The monthly payment for your mortgage will be #{monthly_payment} **"