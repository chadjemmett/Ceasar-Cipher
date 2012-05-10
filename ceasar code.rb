#Ceasar shift cipher encoder. Started May 6, 2012
#input a string and a number of shifts. The string gets encoded into the ceasar shift cipher.
# 
#Here's a way to create an array with the alphabet in it.
a = ("a".."z")
alphabet = [0]
alphabet.push(a.to_a).flatten!

b = ("a".."z").to_a
b.rotate(13)
#ok now, how do I match the characters from a string with the array and then output the shifted letters? Grrr. So hard.

#the above code creates an array with the alphabet in it. Index 1 is a, 2 is b and so on.
#So if we use array indexes to keep track of the number we need away to see where the string "hello" we have to check each character against the array. Add the number of shifts to the index, then puts the letters at that index. So 'hello' on a shift of 1 becomes: 'ifmmp'


#puts alphabet

#pseudo code. take a string and a shift number. match each character in the string with the letter in the array. Take the index from the array. Add the number of shifts. puts the new letter at the index of the array. create a new string with the new shifted lettes. celebrate.

# 'string'.each_char check against array. take index number of character from string. add the shift number. puts the new string. keep doing until all characters are done in string.

#ok. new thing. So we use the String method 'ord.' It gives you a integer for the letter. So we can .each_char ord. Then we take that number add the shift then take that number and it points to a letter in a hash then it 'puts' the letter into a new string. Viola

hash = {97 => "a", 98=> "b", 99=> "c", 100=> "d", 101=> "e", 102=> "f", 103=> "g", 104=> "h", 105=> "i", 106=> "j", 107=> "k", 108=> "l", 109=> "m", 110=> "n", 111=> "o", 112=> "p", 113=> "q", 114=> "r", 115=> "s", 116=> "t", 117=> "u", 118=> "v", 119=> "w", 120=> "x", 121=> "y", 122=> "z"}
puts hash[104]

def shift_cipher string, shift_number
#start the loop
	encoded_message = String.new
	numbers
  while string != empty?
    string.each_char {|x| x.ord + shift_number}
#check the .ord for each character in the string. then add the shift_number
#then compare the numbers to the hash. move the strings into a String.new. Then puts the new String.
    
end


#this works. You can shift with this. however, this doesn't account for spaces. Which have an order number of 32? 's' is a new string. If we puts the string you get the encoded message.
#'q' is the shift number.
#what follows is the magic code.
#"hello".each_char {|z|( s <<  hash[ z.ord + q])}
