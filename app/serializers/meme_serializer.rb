class MemeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_photo, :user_name, :station, :image_url, :post_time, :e1_like, :e2_like, :e3_like, :e4_like

  def user_id
    object.user.id
  end

  def user_photo
    object.user.photo
  end

  def user_name
    object.user.name
  end
  
  def station
    object.station.name
  end

  def post_time
    object.post_time.in_time_zone('US/Eastern').strftime("%Y-%m-%d %H:%M:%S")
  end
end