arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

{b: [2, 4, 6], c: [3, 6], d: [4]}
even_hsh = arr.select do |hsh|
  hsh.all? do |key, value|
    value.all? {|nums| nums.even?}
  end
end

p even_hsh
