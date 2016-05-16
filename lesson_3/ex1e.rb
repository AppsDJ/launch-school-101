# Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers  # Answer: outputs the original array unchanged (uniq is non-destructive method; uniq! is destructive)
##
# 'Answer' is rather incorrect. From Solution learned "puts automatically calls to_s" 
# so Answer is 1 2 2 3 and not [1, 2, 2, 3]
# Additional note: had the last line been p numbers instead, the output would have been [1, 2, 2, 3] 
# because the p method automatically calls inspect on its argument, which gives a different 
# formatting on the output.



# Question 2
# ! in Ruby is used to 1. Negate a statement if ! is in front of the statement (e.g. != means not equals)
#                      2. is the "bang" symbol used as convention to show a method is destructive

# ? in Ruby is used at the end of a method name as convention to show it returns true or false
# ? also used part of the ternary operator 


# Question 3

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice_arr = advice.split(" ")
#puts advice_arr
advice_arr.map! do |element|
  (element == 'important') ? 'urgent' : element
end

puts advice_arr.join(" ")

#  FROM SOLUTION :        advice.gsub!('important', 'urgent')



# SOME TESTS
# a = [ "a", "b", "c", "d" ]
# a.collect {|x| x + "!" } 
# a     => ["a", "b", "c", "d"]

# a = [ "a", "b", "c", "d" ]
# a.collect! {|x| x + "!" }  
# a     => ["a!", "b!", "c!", "d!"]

# a = [ "a", "b", "c", "d" ]
# a.map {|x| x + "!" } 
# a     => ["a", "b", "c", "d"]

# a = [ "a", "b", "c", "d" ]
# a.map! {|x| x + "!" }  
# a     => ["a!", "b!", "c!", "d!"]



# Question 4

# numbers = [1, 2, 3, 4, 5]
# What does the follow method calls do (assume we reset numbers to the original array between method calls)?

# numbers.delete_at(1)      THIS DELETES THE ELEMENT AT INDEX POSITION 1
# numbers.delete(1)         THIS DELETES THE ELEMENT WITH THE VALUE OF 1


# Question 5

# Programmatically determine if 42 lies between 10 and 100.

(10..100).each { |num| puts "42 is here" if num == 42 }
# OR
puts "42 is here" if (10..100).include?(42)
# OR
puts "42 is here" if (10..100).cover?(42)


# Question 6

# Starting with the string:

famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

famous_words = "Four score and " + famous_words
puts famous_words
# OR
famous_words.prepend("Four score and ")
puts famous_words



# Question 7

# Fun with gsub:

def add_eight(number) 
  number + 8
end

number = 2

how_deep = "number"

5.times { how_deep.gsub!("number", "add_eight(number)")}

puts how_deep
# This gives us a string that looks like a "recursive" method call:
# "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call
# eval(how_deep)
# what will be the result?
eval(how_deep)
#42



# Question 8

# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

# flintstones << ["Barney", "Betty"].join(" ")
# flintstones << ["BamBam", "Pebbles"].join(" ")
#  NAAHHH GOING IN CIRCLES HERE...

# SOLUTION      flintstones.flatten!       JALE!!!



# Question 9

# Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.map do |name, number|  
  if name == "Barney"
    flintstones = []
    flintstones << name << number 
  end
end

puts flintstones

# SOLUTION    flintstones.assoc("Barney")     JALE!!!



# Question 10

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.
flintstones2 = {}
flintstones.each do |variable|
  key = variable.to_sym
  #puts key
  value = flintstones.index(variable)
  #puts value
  flintstones3 = {key => "#{value}"}
  flintstones2.merge!(flintstones3)
end
puts flintstones2

# # Solution          flintstones_hash = {}
#                     flintstones.each_with_index do |value, index|
#                       flintstones_hash[value] = index                     
#                     end



