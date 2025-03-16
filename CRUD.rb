module CRUD
  require 'bcrypt'
  puts "module: C.R.U.D activated"
  puts
  puts "*" * 25
  puts

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def password_display(users)
    users.each do |user_passwords|
      puts user_passwords[:password]
    end
  end

  def create_secure_users(users)
    users.each do |user_record|
      puts user_record[:password] = create_hash_digest(user_record[:password])
    end
    users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        return user
      end
    end
    "ACCESS DENIED"
  end
end

