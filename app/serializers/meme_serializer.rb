class MemeSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :station, :image_url, :post_time, :e1_like, :e2_like, :e3_like, :e4_like

  def user_name
    object.user.name
  end
  
  def station
    object.station.name
  end

  def post_time
    object.post_time.in_time_zone('US/Eastern').strftime("%Y-%m-%d %I:%M:%S")
  end
end