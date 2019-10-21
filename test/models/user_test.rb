require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test relationships
  should have_many(:memes)
 
  # test validations
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:fb_access_token)
  should validate_uniqueness_of(:fb_access_token).case_insensitive

  # set up context
  context "Within context" do
    setup do 
      create_users
    end
    
    teardown do
      delete_users
    end

    should "name method is working" do
      assert_equal "Chelsea Cui", @chelsea.name
      assert_equal "Roxanne Zhang", @roxanne.name
      assert_equal "Cindy Liu", @cindy.name
    end
  end
end
