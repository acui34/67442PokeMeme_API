require 'test_helper'

class MemeTest < ActiveSupport::TestCase
  # test relationships
  should belong_to(:station)
  should belong_to(:user)

  # test validations
  should validate_presence_of(:station_id)
  should validate_presence_of(:user_id)
  should validate_presence_of(:post_time)
  should validate_presence_of(:image_url)

  # set up context
  context "Within context" do
    setup do 
      create_users
      create_stations
      create_memes
    end
    
    teardown do
      delete_memes
      delete_stations
      delete_users
    end

    should "verify there is a sort_by_post_time_asc method" do
      assert_equal 3, Meme.sort_by_post_time_asc(@inoodle.id).size
      assert_equal ["www.meme3.com", "www.meme2.com", "www.meme1.com"], Meme.sort_by_post_time_asc(@inoodle.id).all.map{|c| c.image_url}
    end

    should "verify there is a sort_by_post_time_desc method" do
      assert_equal 3, Meme.sort_by_post_time_desc(@inoodle.id).size
      assert_equal ["www.meme1.com", "www.meme2.com", "www.meme3.com"], Meme.sort_by_post_time_desc(@inoodle.id).all.map{|c| c.image_url}
    end

    should "verify there is a sort_by_total_likes method" do
      assert_equal 3, Meme.sort_by_total_likes(@inoodle.id).size
      assert_equal ["www.meme3.com", "www.meme2.com", "www.meme1.com"], Meme.sort_by_total_likes(@inoodle.id).all.map{|c| c.image_url}
    end

  end
end
