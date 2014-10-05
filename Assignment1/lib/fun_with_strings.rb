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
    str = self
	hash = Hash.new(0)
	
	words = str.split(/\W+/)
	words.delete_if{|word| word == " "
	word ==""}
	words.each {|word|
	word.downcase!
	hash[word] += 1}
	return hash
end


def anagram_groups
    	str = self
	hash = Hash.new("")
	words = str.split(" ")

	words.each {|word|
	alpha = word
	alpha.downcase!
	alpha = alpha.chars.sort.join
	hash[alpha] = hash[alpha] + word + " "
	}

	anagrams = Array.new(hash.length)
	i = 0
	hash.each {|key,value|
	anagrams[i]=value.split(" ")
	i += 1	
	}
return anagrams	
end

end

# make all the above functions available as instance methods on Strings:

class String
 	include FunWithStrings
end



