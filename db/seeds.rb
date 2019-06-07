# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users:
u1 = User.create(name: "Bot", username:"test", password:"test", email:"test@gmail.com", fun_fact: "Cookies are my favorite food")
u2 = User.create(name: "Alex", username:"alex", password:"alex", email:"alex@gmail.com", fun_fact: "STUDENT FOR LIFE")

#lifestages:
l1= Lifestage.create(name:"Career Change", description:"Good things never come from comfort zones. It's never too late to start something new")
l2= Lifestage.create(name:"Recent Grads", description:"Time to spread your wings and enter the real world")
l3= Lifestage.create(name:"Becoming a Parent", description:"Becoming a parent isn't just a new chapter of your life, it's a whole book")
l4= Lifestage.create(name:"Getting Married", description:"Building your life with your best friend")
l5= Lifestage.create(name:"Mid-life Crisis", description:"Help...")
l6= Lifestage.create(name:"Divorce", description:"It's messy and never easy...")
l7= Lifestage.create(name:"Losing a Loved One", description:"Goodbyes are never easy")
l8= Lifestage.create(name:"Retirement", description:"Time to stop living at work and start working at living")
l9= Lifestage.create(name:"Breakup", description:"Some of the greatest things come to an end")
l10= Lifestage.create(name:"Buying a House", description:"Purchasing my first home!")
l11= Lifestage.create(name:"Status: In a Relationship", description:"No longer single!")

#groups: 
g1= Group.create(name:"Is bootcamp worth it?", description:"Questions, tips, and resources for those considering joining a bootcamp", lifestage_id: l1.id )
g2= Group.create(name:"To stay or leave my job...", description:"Questions and tips for those contemplating on whether they should leave their company", lifestage_id: l1.id )
g3= Group.create(name:"Parenting 101", description:"Advice, tips, and resources for those expecting", lifestage_id: l3.id )
g4= Group.create(name:"My child is sick...help!", description:"Tips on how to care for a sick child", lifestage_id: l3.id )
g5= Group.create(name:"Daycare", description:"Advice on which day care to send your child", lifestage_id: l3.id )
g6= Group.create(name:"Job Survival 101", description:"Surviving your first day of work", lifestage_id: l2.id )
g7= Group.create(name:"How to prep for an interview", description:"Tips!", lifestage_id: l2.id )
g8= Group.create(name:"How to Budget for a Wedding", description:"Share your budgeting tips!", lifestage_id: l4.id )
g9= Group.create(name:"When is the best month to get married?", description:"Help us celebrate by choosing THE DATE!", lifestage_id: l4.id )
g10= Group.create(name:"Best places to find a wedding dress", description:"Where do I even begin looking for a wedding dress?", lifestage_id: l4.id )
g11= Group.create(name:"Struggle bus", description:"Really struggling", lifestage_id: l5.id )
g12= Group.create(name:"The best sports car", description:"Cars define who you are...make a wise choice", lifestage_id: l5.id )
g13= Group.create(name:"Struggle bus", description:"Really struggling", lifestage_id: l5.id )
g14= Group.create(name:"How to Handle", description:"HELP ME", lifestage_id: l6.id )
g15= Group.create(name:"Divorce but We're Both Excited About It", description:"Sorry kids", lifestage_id: l6.id )
g16= Group.create(name:"How to Cope", description:"How to process what just happened", lifestage_id: l7.id )
g17= Group.create(name:"Dealing with Grief", description:"Coming to terms with death", lifestage_id: l7.id )
g18= Group.create(name:"Beach Houses", description:"Need to spend my money", lifestage_id: l8.id )
g19= Group.create(name:"Best places to retire", description:"Looking for the perfect place to live now that I've retired", lifestage_id: l8.id )
g20= Group.create(name:"How to breakup", description:"What am I supposed to say?", lifestage_id: l9.id )
g21= Group.create(name:"What to do now that we've broken up", description:"Activities, schedules, and more!", lifestage_id: l9.id )
g22= Group.create(name:"Should we get back together?", description:"Questions... so many questions...", lifestage_id: l9.id )
g23= Group.create(name:"Throwing his stuff in the pool", description:"Sweet Revenge...", lifestage_id: l9.id )
g24= Group.create(name:"How to find the perfect location", description:"LOCATION, LOCATION, LOCATION", lifestage_id: l10.id )
g25= Group.create(name:"It costs how much?...", description:"What is the average price I should be paying?", lifestage_id: l10.id )
g26= Group.create(name:"DTR", description:"How to define the relationship", lifestage_id: l11.id )
g27= Group.create(name:"Date ideas", description:"Share your best date spots or stories", lifestage_id: l11.id )

#comments: 
c1 = Comment.create(user_id: u1.id, group_id: g1.id, user_comment:"I've been struggling at work and someone told me to check out coding bootcamps. Anyone care to share their bootcamp preferences and why?")
c2 = Comment.create(user_id: u2.id, group_id: g1.id, user_comment:"There are many options. Which area are you looking in?")
c3 = Comment.create(user_id: u1.id, group_id: g2.id, user_comment:"Work sucks. What is the best way to transition without my company getting suspicious?")
c4 = Comment.create(user_id: u2.id, group_id: g2.id, user_comment:"USE LINKEDIN!")

#user_lifestages: 
ul1= UserLifestage.create(user_id: u1.id, lifestage_id: l1.id)

#memberships:
m1 = Membership.create(user_id: u1.id, lifestage_id: l1.id)