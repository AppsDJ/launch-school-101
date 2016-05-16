
numbers = [1, 2, 3, 4]
p numbers
numbers.each do |number|
  p number
  new_arr = numbers.shift(1)
  # p number
  # p new_arr
  p numbers
end

# numbers = [1, 2, 3, 4]
# p numbers
# numbers.each do |number|
#   # p numbers
#   numbers.pop(1)
#   p numbers
# end