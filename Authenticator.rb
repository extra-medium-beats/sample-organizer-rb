list_of_users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" },
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return "access granted, #{username}"
    end
  end
  "Credentials were off, son"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare passwords..."
puts "If the password matches, you in bruh"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, list_of_users)
  puts authentication
  puts "Press 'q' to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "q"
  attempts += 1
end
puts "you have exceeded the number of attempts." if attempts == 4
