User.create!(email: "noel@safirio.com", first_name: "King", last_name: "Kunta", password: "zxcvbnm", password_confirmation: "zxcvbnm")

puts "1 user created"

AdminUser.create!(email: "admin@allvirtuous.com", first_name: "Emperor", last_name: "Augustus", password: "zxcvbnm", password_confirmation: "zxcvbnm")

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: 1)
end

puts "100 posts created"