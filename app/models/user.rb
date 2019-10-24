class User < ApplicationRecord
  # relationship
  # mount_uploader :photo, PhotoUploader
  has_many :memes 

  # validation
  validates_presence_of :first_name, :last_name
  validates :fb_access_token, presence: true, uniqueness: { case_sensitive: false }
  
  # scope
  scope :sort_by_total_likes_at, -> (station_id) { joins(:memes).group(:id).where('memes.station_id = ?', station_id).order('sum(e1_like + e2_like + e3_like + e4_like)') }

  def name
    return first_name + " " + last_name
  end

  def total_likes_at(station_id)
    user_memes = Meme.where(station_id: station_id, user_id: self.id)
    user_total_likes = 0

    user_memes.each do |meme|
      user_total_likes = user_total_likes + meme.total_likes
    end
    return user_total_likes
  end
  
end
