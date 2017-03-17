#write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake 
#name with it by doing the following:

#1: Swapping the first and last name.


#2: Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#and all of the consonants (everything else besides the vowels) to the next consonant in the 
#alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.


def spy_name(name)
	spy_full_name = name

	
	split_word = spy_full_name.split('')
	secret_name = []

	split_word.each do |letter|
		if letter =='a'
			letter = 'e'

		elsif letter == 'e'
			letter = 'i'

		elsif letter == 'i'
			letter = 'o'

		elsif letter == 'o'
			letter = 'u'

		elsif letter == 'u'
			letter = 'a'
		end
		puts letter
	end
end


spy_name("jay pierce")