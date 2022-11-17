produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  fruit_keys = hash.keys
  counter = 0
  select_fruits = {}

  loop do 
    break if counter == fruit_keys.length
    current_key = fruit_keys[counter]
    current_furit = hash[current_key]

    if current_furit == 'Fruit'
      select_fruits[current_key] = current_furit
    end

    counter += 1 
  end 

  select_fruits
end



p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}