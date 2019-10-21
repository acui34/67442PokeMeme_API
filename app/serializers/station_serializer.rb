class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :longitude, :latitude, :introduction, :mayor, :ranking

  def mayor
    object.mayor
  end

  def ranking
    users = User.sort_by_total_likes_at(object.id)
    users.each do |user|
      RankUserSerializer.new(user, station_id: object.id)
    end
  end

end