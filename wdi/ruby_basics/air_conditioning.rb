puts "What is the current temperature in Farenheit?"
air1 = gets.chomp

puts "Is the A/C working?"
functional = gets.chomp.downcase

puts "What temperature do you WISH it would be? Answer yes or no."
air2 = gets.chomp

if 
  air1 > air2 && functional == "yes" 
  puts "Turn on the A/C Please."

  elsif 
    air1 > air2 && functional == "no"
    puts "Fix the A/C now! It's hot!"

  elsif
    air1<air2 && functional == "no"
    puts "Fix the A/C whenever you have the chance...It's cool..."
   else
   puts "I'm cool." 
  end
