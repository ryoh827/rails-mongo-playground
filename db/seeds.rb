# frozen_string_literal: true

# Create a user
User.destroy_all

users = [
  { name: 'John Doe', age: 30 },
  { name: 'Jane Doe', age: 25 },
  { name: 'John Smith', age: 40 },
  { name: 'Jane Smith', age: 35 }
]

users.each do |user|
  User.create!(user)
end
