# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: change FB tokens after connect to Heroku
roxanne = User.create(first_name: "Roxanne", last_name: "Zhang", fb_access_token: "fbToken111")    
cindy = User.create(first_name: "Cindy", last_name: "Liu", fb_access_token: "fbToken222")    
chelsea = User.create(first_name: "Chelsea", last_name: "Cui", fb_access_token: "fbToken333")    

inoodle = Station.create(name: "iNoodle", longitude: -79.9455855, latitude: 40.4433813, introduction: "A magic place on campus providing asian cuisine, rice/noodle bowls, hot/cold boba tea, breakfast. While sometimes there could be some extra crispy stuff accidentally occur in the food, their ramen and poke bowl are super good!")    
underground = Station.create(name: "Underground", longitude: -79.9431901, latitude: 40.4454289, introduction: "Coolest place on campus providing comfort food for poor CMU kids. Occassionaly having some cool bands playing here!")    
hunt = Station.create(name: "Hunt Library", longitude: -79.943736, latitude: 40.4411172, introduction: "Hmmmm.... Just believe that you are smart and you can pass all the exams!")    
tepper = Station.create(name: "Tepper Quad", longitude: -79.9453756, latitude: 40.4450808, introduction: "One of the newest buildings on campus. Watch out the outlet pits on the floor or you might fall :(")    
gallo = Station.create(name: "El Gallo de Oro", longitude: -79.9430707, latitude: 40.4431615, introduction: "Best (and the only one) Maxican food place on campus. No one could resist the power of their salsa!")    
gates = Station.create(name: "GHC", longitude: -79.9466652, latitude: 40.4436696, introduction: "We love 15-112!")    
fence = Station.create(name: "The Fence", longitude: -79.9434869, latitude: 40.4423644, introduction: " The Fence is really what you make of it. Show up with a only a sleeping bag in December and you'll have a bad time, but come with a tent and​ a grill in August and you'll be a hero.")    
walkingToSky = Station.create(name: "Walking to the Sky", longitude: -79.941156, latitude: 40.4440787, introduction: "A nice and uplifting monument.")    
