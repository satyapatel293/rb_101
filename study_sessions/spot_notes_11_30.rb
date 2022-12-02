# variables as pointers 
# specifically related to arrays 


the object refernenced by local variable name 
vs the method parameter name 



=begin

# How to access values of colors? 
The `hsh` is composed of keys representing fruits and vegetables. The keys are paired with values, which represent characteristics of each fruit/vegetable as a nested hash. To access the colors of a particular fruit/veg, we reference the key for that f/v in the outer hash, which allows us to access the inner characteristics hash, and then we reference the `colors` key, which is associated with an array value containing the colors strings.

# Start with concrete. 
# To access the color strings associted with 'grape'. 
  We'd reference the `grape` key of `hsh`, which returns an inner hash, `inner_hsh`. Then, we'd reference `colors` key of `inner_hsh`, which returns an array of the color strings. 



################ BETTER #################
We're working with a nested hash object that contains keys representing fruits or vegetables. Each of those keys references an inner hash as its value; within the inner hash there are key value pairs representing characteristics of each fruit or vegetable. The keys are symbols, and they reference either strings or arrays containing the specific characteristics of that fruit/veg.

The `#map` method invoked on the hash object referenced by `hsh` and we're assigning each key, value pair to the block parameters `key` and `inner_hash`.

Reference the :type key within the hash referenced by local block variable `inner_hash` and this will return a string with the value "fruit" or "vegetable"

We initialize a local variable `array` to the return value of invoking `map` on the array referenced by `hsh`. `map` iterates over each key-value pair in the `hsh`. On lines 58-66, we pass in a do..end block to `map`. This outer-level `map` invocation will transform each key-value pair into the return value of the block on each iteration and return an array containing these element. 
  

  On each iteration, we assign the current value to the local variable `inner_hash`. If the value associated with `inner_hash[:type]` is equal to the String `fruit`, then we'll invoke `map` on `inner_hash[:colors]` and pass in a block. Otherwise, the key-value pair will be transformed into `nil`. 



=end


=begin

# on line 8 we invoke the array getter method on the array referenced by `arr` and pass in `counter` as a argument which returns the element at the index location for the integer referenced by `counter` and addes that values to the current value referenced by `sum`