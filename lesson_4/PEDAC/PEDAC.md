# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"


"Understand the problem" 
Questions for Interviewer
1. what is a substring?
2. what is a palindrome?
3. will inputs alway be strings?
4. wht dos it mean to treat palindrome words case-sensitively?


input: string
output: array of substrings 
rules: 
    Explicit requirements:
      - return all substrings which are palindromes  (word that reads the same forwards and backward)
      - palindrome words case sensitive
    Implicit requirements:
      - 
      - if string is empty or no palindromes are found return is empty array 
 

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
