puts "Cleaning database..."
# User.destrroy_all

puts 'Creating User'
User.create(email: "test@test.com", password: "123456")
puts 'User is created'

puts 'Creating Admin'
Admin.create(email: "sanrmurphy.family@btinternet.com", password: "BeaglesAreCool", is_admin: true)
puts 'Admin is created'

InformationForm.destroy_all
puts "Finished!"
