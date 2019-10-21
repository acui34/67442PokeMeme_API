class  RankUserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :total_likes

  def total_likes
    object.total_likes_at(instance_options[:station_id])
  end
end