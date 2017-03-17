#Build nested data structure of the NFL



nfl = {
	afc: {
		name: 'AFC',
		teams:['Denver', 'Oakland', 'New England'],
	},

	nfc: {
		name: 'NFC',
		teams: ['Dallas', 'Green Bay', 'Atlanta']
	}
}

puts nfl[:afc][:name]
puts nfl[:afc][:teams]
puts nfl[:afc][:teams].push('New York')
puts nfl[:nfc][:name].downcase
puts nfl[:nfc][:teams][0]

#removes all teams length greater than 6 which leaves the best team on the planet
#nfl[:nfc][:teams].keep_if{
#	|team| team.length <= 6
#}

puts '_' * 30
puts nfl[:nfc][:teams]
puts nfl.has_key?(:nfc)
puts nfl[:nfc][:teams].reverse
puts '_' * 30

#removes teams that length is greater than 6
#nfl[:afc][:teams].delete_if{
#	|team| team.length > 6 
#}

puts nfl[:afc][:teams]










