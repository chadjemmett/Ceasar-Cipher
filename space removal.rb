#a way to pull spaces out of a string and then put them back in.

words = "hello world how are you"
space_index = []
#found this bit of code on stack overflow.
#it gets an index number of all the spaces and puts them in an array
words.length.times {|i| q << i if words[i,1] == ' '}

#then after we encode the message we can put the spaces back in.
space_index.each {|z| message.insert(z, ' ')}
puts space_index
puts words