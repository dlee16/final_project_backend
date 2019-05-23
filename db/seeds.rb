# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users:
u1 = User.create(name: "test", username:"test", password:"test", email:"test@gmail.com", fun_fact: "Cookies are my favorite food")
u2 = User.create(name: "test2", username:"test2", password:"test2", email:"test2@gmail.com", fun_fact: "Cookies = life")

#lifestages:
l1= Lifestage.create(name:"Career Change", description:"Good things never come from comfort zones. It's never too late to start something new.")
l2= Lifestage.create(name:"Recent Grads", description:"Time to spread your wings and enter the real world.")
l3= Lifestage.create(name:"Becoming a Parent", description:"Becoming a parent isn't just a new chapter of your life, it's a book.")

#groups: 
g1= Group.create(name:"Is bootcamp worth it?", description:"Questions, tips, and resources for those considering joining a bootcamp", lifestage_id: l1.id )
g2= Group.create(name:"To stay or leave my job...", description:"Questions and tips for those contemplating on whether they should leave their company", lifestage_id: l1.id )

#comments: 
c1 = Comment.create(user_id: u1.id, group_id: g1.id, user_comment:"I've been struggling at work and someone told me to check out coding bootcamps. Anyone care to share their bootcamp preferences and why?")
c2 = Comment.create(user_id: u2.id, group_id: g1.id, user_comment:"There are many options. Which area are you looking in?")
c3 = Comment.create(user_id: u1.id, group_id: g2.id, user_comment:"Work sucks. What is the best way to transition without my company getting suspicious?")
c4 = Comment.create(user_id: u2.id, group_id: g2.id, user_comment:"USE LINKEDIN!")

#user_lifestages: 
ul1= UserLifestage.create(user_id: u1.id, lifestage_id: l1.id)
ul2= UserLifestage.create(user_id: u2.id, lifestage_id: l1.id)

#memberships:
u1 = Membership.create(user_id: u1.id, lifestage_id:l1.id)
u1 = Membership.create(user_id: u2.id, lifestage_id:l1.id)
