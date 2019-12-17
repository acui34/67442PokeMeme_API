# README

# Project Overview

This is the internal API for Carnegie Mellon Fall19 67-442 iOS Team Project - PokeMeme. We this API using Ruby on Rails to handle all kinds of data used by our app. The API is hosted on Heroku.

Team Members: Chelsea Cui, Roxanne Zhang, Cindy Liu

iOS App Folder: https://github.com/yjtheone/Meme

Database ERD:


# API Calls Documentation


## Users

URL: https://poke-meme-67442.herokuapp.com/v1/users

Actions: 
  - GET /users
  - GET /users/1
  - POST /users
  - PATCH /users/1
  - PUT /users/1
  - DELETE /users/1
  
Example value:

  [{
  
  "id":1,
  
  "fb_access_token":"fbToken111",
  
  "first_name":"Roxanne",
  
  "last_name":"Zhang",
  
  "created_at":"2019-10-21T03:04:57.679Z",
  
  "updated_at":"2019-10-21T03:04:57.679Z"
  }]
 
## Stations

URL:https://poke-meme-67442.herokuapp.com/v1/stations

Actions:
  - GET /stations
  - GET /stations/1
  - POST /stations
  - PATCH /stations/1
  - PUT /stations/1
  - DELETE /stations/1
  
Example value:

  [{

  "Id":1,

  "name":"iNoodle",
  
  "Longitude":40.4433813,
  
  "Latitude":-79.9455855,
  
  "introduction":"iNoodle is a wonderful place to enjoy your meal",
  
  "Mayor":{
  
  "Id":1,
  
  "fb_access_token":"fbToken111",
  
  "first_name":"Roxanne",
  
  "last_name":"Zhang",
  
  "created_at":"2019-10-21T03:04:57.679Z",
  
  "updated_at":"2019-10-21T03:04:57.679Z"
  
  },
  
  "Ranking":[
  
  {"Id":1,
    "fb_access_token":"fbToken111",
    "first_name":"Roxanne",
    "last_name":"Zhang",
    "created_at":"2019-10-21T03:04:57.679Z",
    "updated_at":"2019-10-21T03:04:57.679Z”
  },
  
  {"id":3,
    "fb_access_token":"fbToken333",
    "first_name":"Chelsea",
    "last_name":"Cui",
    "created_at":"2019-10-21T03:04:57.701Z",
    "updated_at":"2019-10-21T03:04:57.701Z"
  }
  
  ]
  
## Memes

URL:https://poke-meme-67442.herokuapp.com/v1/memes?station_id=1

Actions: 

  - GET /memes?station_id={some_id}&order_by={like/desc/asc}
  - GET /memes/1
  - POST /memes
  - PATCH /memes/1
  - PUT /memes/1
  - DELETE /memes
  
Example value:

  {
  "Id":1,
  
  "Station_id":1,
  
  "User_id":1,
  
  "post_time":"2019-10-21T00:00:00.000Z",
  
  "E1_like":0,
  
  "E2_like":0,
  
  "E3_like":0,
  
  "E4_like":0,
  
  "image_url":"www.meme1.com",
  
  "created_at":"2019-10-21T03:04:57.832Z",
  
  "updated_at":"2019-10-21T03:04:57.832Z"
  
  }
 

