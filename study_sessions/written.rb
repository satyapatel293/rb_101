=begin
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names


On lines 1 to 3 we are defining a method called `add_name` which takes 2 paramters `arr` and `name`.

on lines 5 we are initalizinng a variable  `names` to the array object `['bob', 'kim']`
on line 6 we are invoking the add_names function and passing in the values `names` and `'jim'` as arugments. When we invoke this function we are assinng the object refernced by `names` and the object refernced by `'jim'` to the the parameters `arr` and `name`, respectively.
 
 We then resaggined the variable `arr` to the return value of calling the mutating method `<<` on the object refferenced by `arr` with  `name` passed in as an arugment which returns the original array which has been mutated to the value `['bob', 'kim', 'jim']`. So the `add_name` function returns the object refernced by `arr` which has been mutated to `['bob', 'kim', 'jim']`. 

On line 7 with invoke the puts method and pass in `names` as and arugment which outputs `bob`, `kim`, `jim`, each on a successive line and returns `nil`

This code demonstarted how ruby acts as pass by refernce when objects that are mutable such as the array `names` are passed to a mutatinng method such as `<<`. 



return value of method on object with x passed in as arugment.


When we invoke the `add_names` method, we assign the object referenced by `names` and the object referenced by `jim` to the method parameters `arr` and `name`, respectively.


=end



=begin
```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even
```

On line 2, we call the method `partition` on the Array object `[1, 2, 3]`, alongside a `do..end` block on lines 2 through 4, which creates an inner scope, and assign its return value to the variables `odd` and `even`.

The `partition` method will call the block once for each element in the collection object it was called on, passing the element at its respective iteration to the block parameter `num`. The `parition` method will then evaluate the return value of the block.  If the block returns a truthy value, `partition` will select these elements and put them into one array. If the block returns a falsy value, `partition` will select these elements and put them into a second array.
Due to implicit return, the return value of the block will be the return value of the expression `num.odd?`. We can see here that the elements `1` and `3` will return a truthy value, and the element `2` will return a falsy value. Thus, `parition` will return an array with two subarrays, the first subarray being `[1, 3]`, and the second subarray being `[2]`. 
Back to line 1, `odd` will be assigned to the Array object `[1, 3]`, and `even` will be assigned to the Array object `[2]`. This line utilizes parallel assignment to assign multiple objects to multiple variables. 

On line 6, we pass the object referenced by `odd` to the `p` method, which outputs and returns `[1, 3]`. 
On line 7, we pass the object referenced by `even` to the `p` method, which outputs and returns `[2]`.

This code is illustrating how the method `partition` works, specifically on how it uses the return value of a block it is invoked.



=end