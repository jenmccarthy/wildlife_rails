class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :latitude, :presence => true, :length => { minimum: 6, maximum: 10 }
  validates :longitude, :presence => true, :length => { minimum: 6, maximum: 10 }
end
