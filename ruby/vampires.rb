

p "How many employees will be processed?"
processed = gets.chomp.to_i
total_processed = 0
until total_processed == processed do
	puts total_processed

	p "What is your name?"
	vamp_name = gets.chomp

	p "How old are you?"
	age = gets.chomp.to_i
	p "What year were you born?"
	born = gets.chomp.to_i
	true_age = born + age

	p "Our company cafeteria serves garlic brad. Should we order some for you?"
	wants_garlic = gets.chomp
	if wants_garlic == "yes"
		wants_garlic == true
	elsif wants_garlic == "no"
		wants_garlic = false
	else
		wants_garlic = false
	end

	p "Would you like to enroll in the company's health insurance?"
	health_insurance = gets.chomp.to_i

	if true_age == 2016 && health_insurance == true
		p "Probably not a vampire"
		p true_age

	elsif (true_age != 2016 && wants_garlic == false) || health_insurance == false
		p "Probably a vampire"
		p true_age
	elsif true_age != 2016 && wants_garlic == false && health_insurance == false
		p "Almost certainly a vampire"
		p true_age
	elsif vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		p "Certainly a vampire"
	else
		p "Results inconclusive"
	end 
	total_processed += 1
end

def hasAlergies
	is_done = false
	p "Name all of your allergies one at a time"

	while is_done == false
		alergies = gets.chomp

		if alergies == "done"
			is_done = true
		elsif alergies == "sunshine"
			p "Probably a vampire"
			is_done = true
		end
	end

end
hasAlergies
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."