#write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake 
#name with it by doing the following:

#1: Swapping the first and last name.


#2: Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#and all of the consonants (everything else besides the vowels) to the next consonant in the 
#alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.


def spy_name
#check if user is done creating names
done = false
#array that holds encrypted names
encrypted_names = []


	#loops until done equals to true
	while done == false
		#temporary user name array
		user_name = []
		#new name is user_name join as a string
		new_name = user_name.join('')
		puts new_name

		puts "Enter a name"
		name = gets.chomp

		#check if user is done with adding names
		if name == 'quit'
			puts encrypted_names
			done = true
		end

		#spliting the user name and reversing it then spliting it into an array
		secret_name = name.split(' ')
		reverse_name = secret_name.reverse
		join_name = reverse_name.join('')

		split_name = join_name.split('')

			#iterating through split_name changing letters if equal to 'aeiou'
			split_name.each do |letter|
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
				#pushing letter to temporary user_name array
				user_name.push(letter)
			end
			#creating a new name using user_name
			new_name = user_name.join('')
			#pushing new_name to encrypted_names
			encrypted_names.push(new_name)
	end
end

spy_name










