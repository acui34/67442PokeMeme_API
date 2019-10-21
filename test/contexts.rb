module Contexts
  def create_users
    @roxanne = FactoryBot.create(:user, first_name: "Roxanne", last_name: "Zhang", fb_access_token: "fbToken111")    
    @cindy = FactoryBot.create(:user, first_name: "Cindy", last_name: "Liu", fb_access_token: "fbToken222")    
    @chelsea = FactoryBot.create(:user, first_name: "Chelsea", last_name: "Cui", fb_access_token: "fbToken333")    
  end

  def delete_users
    @roxanne.delete
    @cindy.delete
    @chelsea.delete
  end

  def create_stations
    @inoodle = FactoryBot.create(:station, name: "iNoodle", longitude: 40.4433813, latitude: -79.9455855, introduction: "iNoodle aaa bbb cccccc ddd")    
    @underground = FactoryBot.create(:station, name: "Underground", longitude: 40.4454289, latitude: -79.9431901, introduction: "underground aaa bbb cccccc ddd")    
    @hunt = FactoryBot.create(:station, name: "Hunt", longitude: 40.4411172, latitude: -79.943736, introduction: "Hunt aaa bbb cccccc ddd")    
  end

  def delete_stations
    @inoodle.delete
    @underground.delete
    @hunt.delete
  end

  def create_memes
    @meme1 = FactoryBot.create(:meme, station: @inoodle, user: @roxanne, post_time: DateTime.now.beginning_of_day, image_url: "www.meme1.com")
    @meme2 = FactoryBot.create(:meme, station: @inoodle, user: @chelsea, post_time: DateTime.now.beginning_of_day-10, image_url: "www.meme2.com", e2_like: 1, e1_like: 1)     
    @meme3 = FactoryBot.create(:meme, station: @inoodle, user: @cindy, post_time: DateTime.now.beginning_of_day-20, image_url: "www.meme3.com", e1_like: 3, e2_like: 5)    
    @meme4 = FactoryBot.create(:meme, station: @hunt, user: @chelsea, post_time: DateTime.now.beginning_of_day, image_url: "www.meme4.com")    
  end

  def delete_memes
    @meme1.delete
    @meme2.delete
    @meme3.delete
    @meme4.delete
  end


end