# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# factors(2)

def factors(number)
  dividend = 1
  divisors = []

  if number < 0
    dividend = -1
    while dividend >= number
     if number % dividend == 0
      puts "#{-dividend} is a dividend"
      divisors << -dividend 
      p divisors 
      else
        puts "#{-dividend} not dividend"
      end
      dividend -= 1
    end
  elsif number == 0
      puts "Well, O divided by 0 is 0, so that's that"
      divisors
  else
    while dividend <= number
     if number % dividend == 0
      puts "#{dividend} is a dividend"
      divisors << dividend 
      p divisors 
      else
        puts "#{dividend} not dividend"
      end
      dividend += 1
    end    
  end
end

factors(7)