puts "How old are you?"
age = gets.chomp.to_i

puts "What country are you from?"
country = gets.chomp

if age >= 21 && country.upcase == "USA"
  puts "Let's take shots."
elsif age >= 18
  puts "Let's smoke cigarettes."
else
  puts "Let's play nintendo."
end