dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys# Write code here
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code?"
  answer = gets.chomp.downcase
  if answer != "y"
    puts "Thank you for playing. Have a great day!"
    break
  else puts "For which city would you like to know the area code?"
  puts get_city_names(dial_book)
  puts "Enter the city name:"
  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts  "Who do you think I am, Rand McNally? pick from the list please."
  end
  end
end

