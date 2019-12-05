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

inoodle = Station.create(name: "iNoodle", longitude: -79.9455855, latitude: 40.4433813, introduction: "iNoodle is a really really really really really really really really really really really really really really cool place.")    
underground = Station.create(name: "Underground", longitude: -79.9431901, latitude: 40.4454289, introduction: "underground is super super awesome.")    
hunt = Station.create(name: "Hunt", longitude: -79.943736, latitude: 40.4411172, introduction: "Hunt is the evil place.")    
