arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]


arr.map do |sub_arr|
  sub_arr.select {|value| value % 3 == 0 }
end



arr.map do |sub_arr|
  sub_arr.reject {|value| value % 3 != 0 }
end
