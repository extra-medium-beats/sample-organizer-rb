require 'bundler/inline'

gemfile true do
  source 'https://rubygems.org'
  gem 'bcrypt'
end# frozen_string_liter
# al: true
require 'bcrypt'

my_password = BCrypt::Password.create("Poodles705")

puts my_password
puts my_password
