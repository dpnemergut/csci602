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
