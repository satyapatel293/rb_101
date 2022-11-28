arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_array =  arr.map do |sub_array|
  sub_array.sort {|a,b| b <=> a }
end 


p sorted_array
