class Meme < ApplicationRecord
  # relationships
  #mount_uploader :image_url, PhotoUploader
  belongs_to :station
  belongs_to :user

  # validation
  validates_presence_of :station_id, :user_id, :image_url

  # scopes
  scope :by_user, -> (user_id) { where(user_id: user_id)}
  scope :by_station, -> (station_id) { where(station_id: station_id)}
  scope :sort_by_post_time_asc, -> {order(post_time: :asc)}
  scope :sort_by_post_time_desc, -> {order(post_time: :desc)}
  scope :sort_by_total_likes, -> {order('e1_like + e2_like + e3_like + e4_like DESC')}

  def total_likes
    return self.e1_like + self.e2_like + self.e3_like + self.e4_like
  end
end
