#ceasar shift cipher code.
#works! yay! Needs improvement tho'. Figured out the spaces problem. Can't deal with punctuation.
#first we create the alphabet array.

alphabet_array = ("a".."z").to_a

#the other variables.
message = "zayhunl dvtlu sfpun pu wvukz kpzaypibapun zdvykz pz uv"
space_index_holding =[]
holding_array = []
coded_message = String.new

#here we index the spaces and put them in an array for future reference. I snatched this from stack overflow.
message.length.times {|i| space_index_holding << i if message[i,1] == ' '}


#here we get rid of spaces and make everything downcase
message.downcase! 
message.delete! " "



#the meat of the code. we get the numbers in the un-rotated array.

message.each_char { |letter| holding_array << alphabet_array.index(letter)}

#the next two lines are just for testing and clarity. I was checking the holding array for the correct numbers.
#puts holding_array

#puts "****************************"

#then we rotate the array.
aplhabet_array = alphabet_array.rotate!(-7)

#using the prior numbers we cram the letters into a new string.
holding_array.each {|number| coded_message << alphabet_array[number]}

#the coded message gets its spaces back.
space_index_holding.each {|z| coded_message.insert(z, ' ')}


#then display the coded message.
puts coded_message