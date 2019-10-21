class Station < ApplicationRecord
  # relationship
  has_many :memes 

  # validation
  validates_presence_of :name, :longitude, :latitude, :introduction

  # TODO: fix mayor method
  # def mayor
  #   User.joins(:memes).where('memes.station_id = ?', self.id).group('users.id').order('(SELECT e1_like + e2_like + e3_like + e4_like FROM Users WHERE id = users.id) DESC').first
  # end
end

# User.joins(:memes).where('memes.station_id = ?', 1).group('users.id').order('(SELECT e1_like + e2_like + e3_like + e4_like 
#                                                                               FROM Users 
#                                                                               JOIN Memes on Memes.user_id = Users.id
#                                                                               GROUP BY Users.id
#                                                                               WHERE Users.id = users.id) DESC').first
