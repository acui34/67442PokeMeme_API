class User < ApplicationRecord
  # relationship
  has_many :memes 

  # validation
  validates_presence_of :first_name, :last_name
  validates :fb_access_token, presence: true, uniqueness: { case_sensitive: false }
  #TODO: finish this sort by total likes
  #scope :sort_by_total_likes, -> (station_id) { joins(:memes).where(station_id: station_id).order('e1_like + e2_like + e3_like + e4_like DESC') }

  def name
    return first_name + " " + last_name
  end

end
