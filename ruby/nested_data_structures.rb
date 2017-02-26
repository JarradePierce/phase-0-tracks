nascar = {
	
	#chevy nested data
	chevy:{
		car_name: "Chevrolett SS",
		drivers: {
			driver1: "Gordon",
			driver2: "Johnson"
		},
		teams: [
			"Hendric", "Hass"
		]
	},

	#toyota nested data
	toyota:{
		car_name: "Toyota Camery",
		drivers: {
			driver1: "Busch",
			driver2: "Truex Jr"
		},
		teams: [
			"JGR", "Froniture Row"
		]
	},

	#ford nested data
	ford:{
		car_name: "Ford Fusion",
		drivers:{
			driver1: "Keslowski",
			driver2: "Lagano"
		},
		teams: [
			"Penske", "Wood Brothers"
		]
	}
}

puts nascar[:toyota][:drivers][:driver1]
puts "VS"
puts nascar[:chevy][:drivers][:driver2]
puts "VS"
puts nascar[:ford][:teams][0]
puts "VS"
puts nascar[:ford][:car_name]