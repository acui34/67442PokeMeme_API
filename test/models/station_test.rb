require 'test_helper'

class StationTest < ActiveSupport::TestCase
   # test relationships
   should have_many(:memes)
 
   # test validations
   should validate_presence_of(:longitude)
   should validate_presence_of(:latitude)
   should validate_presence_of(:introduction)
end
