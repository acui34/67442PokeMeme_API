class Station < ApplicationRecord
  # relationship
  has_many :memes 

  # validation
  validates_presence_of :name, :longitude, :latitude, :introduction
  
  def mayor
    User.joins(:memes).group('users.id').where('memes.station_id = ?', self.id).order('sum(e1_like + e2_like + e3_like + e4_like)').first
  end

end

