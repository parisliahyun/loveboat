puts "What's your name?"
name = gets.chomp

puts "What's your age?"
age = gets.chomp.to_i

englebert = "englebert"

print "Hi #{name} who is #{age} years old. "
print "You will be 75 in #{75 - age} years. "
print "It is #{name.downcase == engelbert} that your name is #{engelbert.capitalize}. "
print "Goodbye human!"