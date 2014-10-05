# Assignment 1
# Collaborators:
#  Daniel Nemergut
#  Garrett Stauber
#  Clinton Medbery

# Define a class BookInStock which represents a book with
# an isbn number string and a float price as attributes.
# The constructor should accept the ISBN number as the first
# argument and the price as a second and should raise
# ArgumentError if the ISBN number is empty or if the price is <= 0.
# Include proper getters and setters for the attributes.
# Include a method price_as_string that returns the price with a leading $ and trailing .00

class BookInStock

  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn = '', price = 0)
    raise ArgumentError unless isbn != ''
    raise ArgumentError unless price.is_a?(Numeric)
    raise ArgumentError unless price > 0

    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return '$' + sprintf('%.2f', @price)
  end

end
