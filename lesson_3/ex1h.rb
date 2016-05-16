# Question 1

# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting

# MY ANSWER:      WILL THROW AN ERROR AS TO UNDEFINED VARIABLE OR METHOD

# SOLUTION:       RETURNS NIL (when you initialize a local variable within an if block, even if that if 
                # block doesn’t get executed, the local variable is initialized to nil.)
                  # INTERESTING!



# Question 2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# MY ANSWER:        { a: 'hi' }         WOOPSS! WRONG. << WAS USED AND THAT MODIFIES THE ORIGINAL OBJECT

# SOLUTION:         {:a=>"hi there"}




# Question 3

# In other exercises we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.
# To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.
# What will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# MY ANSWER:      "one is one"
                # "two is two"
                # "three is three"



# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# MY ANSWER:      "one is one"
                # "two is two"
                # "three is three"


# C)

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# MY ANSWER:      "one is two"
                # "two is three"
                # "three is one"

