FactoryBot.define do
  
  factory :user do
    first_name "John"
    last_name "Doe"
    fb_access_token "fbToken000"
  end
  
  factory :station do
    name "Entropy"
    longitude 41.12141
    latitude 79.01221
    introduction "Entropy is a cool place"
  end
  
  factory :meme do 
    e1_like 0
    e2_like 0
    e3_like 0
    e4_like 1
    image_url "www.meme0.com"
    association :user
    association :station
  end


end