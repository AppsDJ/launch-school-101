# Question 1

# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#see if there is an age present for "Spot".
puts ages.include?("Spot")
puts ages.has_key?("Spot")
puts ages.key?("Spot")

# SOLUTION            # ages.key?("Spot")
                      # Bonus Answer:
                        # Hash#include? and Hash#member?



# Question 2

# Add up all of the ages from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0
ages.each do |name, age|
total_ages += age
end
puts total_ages
# puts ages.values.inject(:+)

# SOLUTION         ages.values.inject(:+)         YOU WHAT ????



# Question 3

# In the age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).
ages.delete_if {|name, age| age > 100}
puts ages

# SOLUTION          ages.keep_if { |_, age| age < 100 }



# Question 4

# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):

# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_arr = munsters_description.split(' ')
munsters_arr.each do |word|
  if word != word.downcase && !word.start_with?("T")
    #puts word
    munsters_arr[munsters_arr.index(word)] = word.downcase!
    #print musters_arr
  end
end
munsters_description = munsters_arr.join(" ")

puts munsters_description

puts munsters_description.swapcase

puts munsters_description.downcase

puts munsters_description.upcase

# SOLUTION          munsters_description.capitalize!        THIS ONE, BRO, DIDN'T THINK ABOUT IT AND WENT THE LOOOONG WAY
                  # munsters_description.swapcase!
                  # munsters_description.downcase!
                  # munsters_description.upcase!




# Question 5

# We have most of the Munster family in our age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
puts ages

# SOLUTION          ages.merge!(additional_ages)




# Question 6

# Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min = ages.first[1]     # ages.first returns key+val in hash as array with 2 elements: at 0 is key at 1 is value
# puts min
ages.each do |name, age|
  if age <= min
    min = age
  end
end
puts min

# SOLUTION          ages.values.min           JALE!!!




# Question 7

# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")       # String method

# or a longer version

advice_arr = advice.split(" ")
present = ''
advice_arr.each do |word|
  if word != "Dino"
   present = false
 else
    break
  end
end
puts present

# SOLUTION          advice.match("Dino")      IN DOCS FOR String




# Question 8

# In the array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
flintstones.index {|word| word.start_with?("Be")}

# SOLUTION          flintstones.index { |name| name[0, 2] == "Be" }           I LIKE MINE BETTER




# Question 9

# Using array#map!, shorten each of these names to just 3 characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name| 
  # puts name 
  loop do
    if name.length != 3
      name = name.chop
    else
      break
    end
  end
  puts name
end

# SOLUTION        # flintstones.map! do |name|
                  #   name[0, 3]                  # THIS RETURNS A SUBSTRING OF LENGTH 3 START AT INDEX 0
                  # end



# Question 10

# Again, shorten each of these names to just 3 characters -- but this time do it all on one line:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0,3]  }

# SOLUTION          flintstones.map! { |name| name[0,3]}





