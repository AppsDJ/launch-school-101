munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# puts munsters["Herman"]["age"]
# munsters["Herman"]["age_group"] = "adult"

munsters.each do |name, details|
  age = munsters[name]["age"]
  case age
    when (0..17)
      puts "you are #{munsters[name]["age"]} a kid"
      # munsters[name]["age_group"] = "kid"
    when (18..64 )
      puts "you are #{munsters[name]["age"]} an adult"
      # munsters[name]["age_group"] = "adult"
    else  
      puts "you are #{munsters[name]["age"]} a senior"
      # munsters[name]["age_group"] = "senior"
  end
end

p munsters

