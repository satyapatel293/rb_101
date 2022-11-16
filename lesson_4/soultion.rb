def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum 
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do 
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end




# row number 1 -->  sum of intergers in row: 2
# row number 2 -->  sum of intergers in row: 10
# row number 4 -->  sum of intergers in row: 68 


# p sum_even_number_row(1) == 2 
# p sum_even_number_row(2) == 10 
# p sum_even_number_row(4) == 68 
 
# start: 2, lenth: 1 --> [2]
# start: 4, lenth: 2 --> [4, 6]
# start: 8, lenth: 3 --> [8, 10, 12]

# p create_row(2, 1) == [2]
# p create_row(4,2) == [4, 6]
# p create_row(8,3) == [8, 10, 12]

a = [1, 2, 3, 4]

p a.each do |x| 
  p x
  a.pop(1)
end 

p a