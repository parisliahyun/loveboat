puts "Tell me the name of an animal."
animal = gets.chomp

puts "How old is it?"
age = gets.chomp.to_i

puts "What's its name?"
name = gets.chomp

puts "#{name} the #{animal} is #{age} years old."