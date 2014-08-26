class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :latitude, :presence => true, :length => { minimum: 6 }
end
