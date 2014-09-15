# Assignment 1
# Collaborators:
#  Daniel Nemergut
#  Garrett Stauber
#  Clinton Medbery

# Define a method hello(name) that takes a string representing a name and
# returns the string "Hello, " concatenated with the name.

def hello(name = '')
  return "Hello, " + name
end

raise 'Incorrect edge case' unless hello() == 'Hello, '
raise 'Incorrect string' unless hello('John') == 'Hello, John'

# Define a method starts_with_consonant?(s) that takes a string and
# returns true if it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
# NOTE: be sure it works for both upper and lower case and for nonletters!

def starts_with_consonant?(s = '')
  return false if s == ''
  return false if s[0] !~ /[A-Za-z]/
  return false if s[0] =~ /[AEIOUaeiou]/
  return true
end

raise 'Incorrect edge case' unless starts_with_consonant?() == false
raise 'Does not reject numbers' unless starts_with_consonant?(1) == false
raise 'Does not accept consonants' unless starts_with_consonant?('sup') == true
raise 'Does not reject vowels' unless starts_with_consonant?('every') == false

# Define a method binary_multiple_of_4?(s) that takes a string and
# returns true if the string represents a binary number that is a multiple of 4.
# NOTE: be sure it returns false if the string is not a valid binary number!

def binary_multiple_of_4?(s = '')
  # Multiples of 4 are 100, 1000, etc.
  return true if s =~ /^100+$/
  return false
end

raise 'Accepts letters' unless binary_multiple_of_4?('01ST') == false
raise 'Accepts non-binary' unless binary_multiple_of_4?('5') == false
raise 'Accepts less than 4' unless binary_multiple_of_4?('10') == false
raise 'Accepts non-multiples of 4' unless binary_multiple_of_4?('1100') == false
raise 'Does not accept multiples of 4' unless binary_multiple_of_4?('1000') == true
