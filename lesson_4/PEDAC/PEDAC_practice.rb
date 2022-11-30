=begin
PART 1 
The code returns 
=> 'HELLO!"

the code does not output anything to the screen because there is no operation that outputs anything to the screen in the fix() method 

this code demonstrates assigment operation of the variable t to the return value of fix(s)


PART 2
s and t now both have the value "HELLO!"

demonstates pass by reffernce and mutablity 
The argument value is assigned to 's' so it is point to the same place in memomry as 's' 
so if the object value is pointing to is modified destrucitvly then 's' is also modified becuase it is point to the same place in memory

both String#upcase! and String#concat are mutating the caller 
so 's' is modified along with the the method returning a value 

=end