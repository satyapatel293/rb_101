=begin
------p
hash of hashes
output integer
  calculate total all of all males in family 
------e

------d

------a
select hashes that have hashes that contain gender = male
select only ages 
add ages together 

=end


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

males = munsters.select do |name, facts|
  facts['gender'] == 'male'
end 

total = 0 

males.each do |name, facts|
  total += facts["age"]
end 

puts total 


# my soultion is very redudant because I'm only selecting the values hash anyway 
# can just use hash#each_value to itterate quicker 

total_male_age = 0 
munsters.each_value do |value|
  total_male_age += value["age"] if value["gender"] == 'male'
end
puts total_male_age