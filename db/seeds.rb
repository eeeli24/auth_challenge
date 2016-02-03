5.times do |i|
  User.create(first_name: 'User',
              second_name: i,
              email: "user_#{i}@example.com",
              password: 'password',
              phone_number: 89999999999,)
end
