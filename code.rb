items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "moon dust", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small persian rug", "used medium space suit", "heffalump shag rug", "woozle hide purse"]


# Greet the user, and print out our selection of items.

print "What is your name?: "
name = gets.chomp

puts "Welcome #{name}!"
puts
puts "Here is a list of items you can choose to buy!:"
items.each do |item|
  puts " #{item}"
end

puts
input=""
shopping_cart = Array.new
unavailable_items =  Array.new
while true
  puts "What would you like to buy? (type FINISHED when you're done)"
  print "> "
  input = gets.chomp.downcase

  if input == "finished"
    break
  elsif items.include?(input)
    shopping_cart << input
  elsif items.include?(input)==false
    unavailable_items << input
  else
    puts "Sorry, that item is not in our store yet!"
  end
end
puts
puts "#{name}, thanks for trying our online Souq platform. Here is a list of items in your cart!:"

shopping_cart.each do |item|
  puts "* #{item}"
end

puts "Btw, we noticed you tried entering in some items that aren't part of the online Souq. We don't have the following items yet but will let you know if they showup!:"

unavailable_items.each do |item|
  puts "* #{item}"
end
