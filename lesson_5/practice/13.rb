arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

new_array = arr.sort do |a, b| 
  a.select {|num| num.odd?} <=> b.select {|num| num.odd?}
end

p new_array



#easier to read code below 


p(
  arr.sort_by do |sub_arr|
    sub_arr.select do |num|
      num.odd?
    end
  end
)