class Meme < ApplicationRecord
  # relationships
  belongs_to :station
  belongs_to :user

  # validation
  validates_presence_of :station_id, :user_id, :post_time, :image_url

  # scopes
  scope :sort_by_post_time_asc, -> (station_id) { where(station_id: station_id).order(:post_time) }
  scope :sort_by_post_time_desc, -> (station_id) { where(station_id: station_id).order(post_time: :desc) }
  scope :sort_by_total_likes, -> (station_id) { where(station_id: station_id).order('e1_like + e2_like + e3_like + e4_like DESC') }

end
