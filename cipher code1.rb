#ceasar shift cipher code.
#works! yay! Needs improvement tho'. Can't deal with spaces and I'm sure there are other problems.
#first we create the alphabet array.

alphabet_array = ("a".."z").to_a

#the other variables.
message = "helloworld"
holding_array = []
coded_message = String.new

#the meat of the code. we get the numbers in the un-rotated array.
message.each_char { |letter| holding_array << alphabet_array.index(letter)}

#the next two lines are just for testing and clarity. I was checking the holding array for the correct numbers.
#puts holding_array

#puts "****************************"

#then we rotate the array.
aplhabet_array = alphabet_array.rotate!(20)

#using the prior numbers we cram the letters into a new string.
holding_array.each {|number| coded_message << alphabet_array[number]}

#then display the coded message.
puts coded_message