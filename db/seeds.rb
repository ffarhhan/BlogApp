# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..100).each do |post|
    Post.create(title: "Post#{post}", body: "PostBody#{post}",user_id: rand(1..10))
end

(1..10).each do |user|
    User.create(name: "Name#{user}", email: "Test@email#{user}.com",user_type: ["admin_user","normal_user","guest_user"].sample)
end