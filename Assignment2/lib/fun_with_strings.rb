module FunWithStrings
  def palindrome?
	test_str = self
	test_str = test_str.gsub(/\W/, '') unless test_str.gsub(/\W+/, '')==nil
	test_str.downcase!
	if test_str == test_str.reverse
	return true
	else
	return false
	end

  end

def count_words
    # your code here
end

def anagram_groups
    # your code here
end
end

# make all the above functions available as instance methods on Strings:

class String
 	include FunWithStrings
end


