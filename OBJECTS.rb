require_relative 'CRUD'

class Student
  include CRUD
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, username: #{@username}, password: #{@password}"
  end
end

student1 = Student.new("Herb", "McGillicutty", "herb69@gmail.com", "BigHerb69",
                       "herb69420!")

student2 = Student.new("Taco", "Rivver", "tacoJohn@gmail.com", "Juanito",
                       "bigTACC69!")

hashed_password = student1.create_hash_digest(student1.password)

puts hashed_password