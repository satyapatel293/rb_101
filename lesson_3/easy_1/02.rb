=begin
  
what is != and where should you use it?   
  => != is a comparison operator for 'not equal' which will return true or false depending on
  equality (true for not equal and false for equal). Can be used to evaulate statments for controling the flow of the program 
put ! before something, like !user_name
  => ! will change the truthiness of the variable to its oppiosite for example !user_name now 
  evulates as false when used in control flow
put ! after something, like words.uniq!
  => ! is part of the method name and doesn't really tell you what the method is doing(this is correct answer) 
put ? before something
  => placed after a comparision to initate a terinery operatro in which if the condition on the left is evaluate true then the code on the right is returned or if false then the conde to the right of the : is returned 
put ? after something
  => ? is part of the method name and doesn't really tell you what the method is doing(this is correct answer) 
put !! before something, like !!user_name
  => will give the truthiness of the variable in this case true or if !!nil will return false 





notes to remember if you see method!()
  can signify that the medthod call is modifying the caller BUT DOES NOT ALWAY MEAN THIS its just convention 
notes to remember if you see method!()
  can signify that the method returns a boolean BUT DOES NOT ALWAYS MEAN THIS its just convention 