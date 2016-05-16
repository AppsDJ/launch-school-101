
# Question 1

# Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# SOLUTION        flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



# Question 2

# How can we add the family pet "Dino" to our usual array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# SOLUTION         flintstones << "Dino"



# Question 3

# In the previous exercise we added Dino to our array like this:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.
# How can we add multiple items to our array? (Dino and Hoppy)

# SOLUTION        flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# or              flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item




# Question 4

# Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".
# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
# As a bonus, what happens if you use the String#slice method instead?

puts advice.slice!(0, advice.index('house'))

# SOLUTION        advice.slice!(0, advice.index('house'))



# Question 5

# Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
count = 0
statement.each_char { |chr| count += 1 if chr == "t"  }
puts count

# SOLUTION        statement.scan("t").count       =>>   scan returns array, count counts elemnts of array




# Question 6

# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"
title.center(40)

# SOLUTION        title.center(40)
















