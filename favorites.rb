# create array
# populate array
# function a_few_of returns a random number of random elements

def load_array
	dump_truck = []
	puts "Gimme one of your favorite things"
	dump_truck[0] = gets.chomp
	count = 1
	while dump_truck.last != "Meh"
		puts "Gimme another of your favorite things or enter Meh to end"
		dump_truck[count] = gets.chomp
		count +=1
	end
	dump_truck.pop
	return dump_truck
end

def a_few_of the_in
	numb = rand(the_in.length)
	the_out = []
	while numb > 0
		the_out.push (the_in [rand(the_in.length)])
		numb -=1
	end
	return the_out
end

favorites = load_array
some_of = a_few_of favorites
puts "Some of your favorite things are #{some_of}" 

