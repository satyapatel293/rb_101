munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value| 
  case value['age']
  when (0..17)
    value["age_group"] = 'kid'
  when (18..64)
    value["age_group"] = 'adult'
  else 
    value["age_group"] = 'senior'
  end 
end

p munsters



=begin
modify input hash
add key to value(hash) of each key 

want to itterate through the hash 
select all the values
push new keyvalue pair into the vaule  
push new 


=end