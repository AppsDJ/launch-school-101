age = 3
if (1..10).include?(age)
  puts "1 to 10"
end

case age
when age < 11 
  puts "1 to 10"
when age > 11 && age < 18
  puts "11 to 20"
else
  puts "older"
end