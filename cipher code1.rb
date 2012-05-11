#ceasar shift cipher code.
#works! yay! Needs improvement tho'. Can't deal with spaces and I'm sure there are other problems.
#first we create the alphabet array.

alphabet_array = ("a".."z").to_a
#the rotate parameter is the shift number.

#the other variables.
message = "spzaluzayhunl"
holding_array = []
coded_message = String.new

#the meat of the code. we get the numbers in the un-rotated array.
message.each_char { |letter| holding_array << alphabet_array.index(letter)}
puts holding_array

puts "****************************"
#then we rotate the array.
aplhabet_array = alphabet_array.rotate!(-7)

#using the prior numbers we cram the letters into a new string.
holding_array.each {|number| coded_message << alphabet_array[number]}

#then display the coded message.
puts coded_message