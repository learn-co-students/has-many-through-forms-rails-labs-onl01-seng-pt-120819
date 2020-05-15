# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: 'Cool')
Category.create(name: 'Wild')
Category.create(name: 'New')

Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
User.create(username: 'CoolGuy5')

@post = Post.create(title: "Groovy", content: "I'm feeling so groovy")
@user = User.create(username: 'CoolGuy4')
@comment = @post.comments.build(content: "Great Post!", user: @user)