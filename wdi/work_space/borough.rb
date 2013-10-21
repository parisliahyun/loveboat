puts "What borough do they live in?"
borough = gets.chomp.downcase

case borough
  when "manhattan"
    puts "You're amazing."
  when "brooklyn"
    puts "You're fantastic."
  when "queens"
    puts "You're royal."
  when "bronx"
    puts "I bet you love the Yankees."
  when "staten island"
    puts "How about them ferries..."
  else 
    puts "Ok, come visit sometime."
  end