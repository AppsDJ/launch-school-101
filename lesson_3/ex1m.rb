# Question 1

# For this exercise, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

string = "The Flintstones Rock!"
space = ""
10.times do 
    puts space + string
    space += " "
end

# SOLUTION          10.times { |number| puts (" " * number) + "The Flintstones Rock!" }




# Question 2

# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"
# ex:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
viewed =[]
hash = {}
statement.each_char do |chr|
  if !viewed.include?(chr)
    viewed << chr
    puts "#{chr} occurs #{statement.scan(chr).count} times."
    hash[chr] = statement.scan(chr).count
  end
end
#puts viewed
puts hash

# SOLUTION        result = {}                                              ###  I LIKE MINE BETTER !!!
                # letters = ('A'..'Z').to_a + ('a'..'z').to_a              ### Where is " " in theirs??
                # letters.each do |letter|
                #   letter_frequency = statement.scan(letter).count
                #   result[letter] = letter_frequency if letter_frequency > 0
                # end





# Question 3

# The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# SOLUTION      (40+2).to_s  or use string interpolation:     puts "the value of 40 + 2 is #{40 + 2}"




# Question 4

# What happens when we modify an array while we are iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# MY ANSWER: the first element of numbers is removed and the modified array is returned
#             The output is 1 3

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
  p numbers
end

# MY ANSWER: the last element of numbers is removed and the modified array is returned
#             The output is 1 2





# Question 5

# Alan wrote the following method, which was intended to show all of the factors of the input number:

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# Alyssa noticed that this will fail if you call this with an input of 0 or a negative 
# number and asked Alan to change the loop. How can you change the loop construct 
# (instead of using begin/end/until) to make this work? Note that we're not looking to find 
# the factors for 0 or negative numbers, but we just want to handle it gracefully instead 
# of raising an exception or going into an infinite loop.

# MY ANSWER:

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

# SOLUTION        # def factors(number)
                  #   dividend = number
                  #   divisors = []
                  #   while dividend > 0 do
                  #     divisors << number / dividend if number % dividend == 0
                  #     dividend -= 1
                  #   end
                  #   divisors
                  # end

                    #   WELL, THEIRS'S A BIT SHORTER   ;O)




# Question 7

# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.
# Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# MY ANSWER:        limit is declared as a local variable outside the method fib, thus is not 
                  # visible inside the method definition and can not be used there.
                  # One posible solution is to hard code limit as a local variable to the method
                  # Another solution is to pass limit as a third paramether to fib



# Question 8

# In another example we used some built-in string methods to change the case of a string.
 # A notably missing method is something provided in Rails, but not in Ruby itself...titleize!
  # This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.

# Write your own version of the rails titleize implementation.

# MY ANSWER
def titleize(string)
  string_arr = string.split(" ")
  #p string_arr
  string_arr.each do |word|
    word.capitalize!
    #puts word
  end
  puts string_arr.join(" ")
end

titleize("titus is the best")

# SOLUTION        words.split.map { |word| word.capitalize }.join(' ')         
               
                # SAME THING AS MINE REALLY BUT MORE CONCISE



# Question 9

# Given the munsters hash below
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.


# MY ANSWER:

#puts munsters["Herman"]["age"]    # just testing I reach age
#munsters["Herman"]["age_group"] = "adult"      # testing
#puts munsters["Herman"]      #testing

munsters.each do |name, details|
  age = munsters[name]["age"]
  case age
    when (0..17)
      # puts "you are #{munsters[name]["age"]} a kid"       testing
      munsters[name]["age_group"] = "kid"
    when (18..64 )
      # puts "you are #{munsters[name]["age"]} an adult"       testing
      munsters[name]["age_group"] = "adult"
    else  
      # puts "you are #{munsters[name]["age"]} a senior"       testing
      munsters[name]["age_group"] = "senior"
  end
end

p munsters



























