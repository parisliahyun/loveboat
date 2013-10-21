# weather = gets.chomp.downcase

# if weather == "sunny"
# puts "wear a t-shirt"
# elsif weather == "raining"
# puts "wear a rain jacket"
# elsif weather == "snowing"
# puts "wear a snow costume"
# else
# puts "wear anything"
# end

case weather
when "sunny"
  puts "wear a tshirt"
when "raining"
  puts "wear a rain jacket"
when "snowing"
  puts "wear a snow costume"
else
  puts "wear anything"
end