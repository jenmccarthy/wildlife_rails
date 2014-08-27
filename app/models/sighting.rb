class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :latitude, :presence => true, :length => { maximum: 10 }
  validates :longitude, :presence => true, :length => { maximum: 10 }
  validates :species_id, :presence => true
  validates :quantity, :presence => true

  belongs_to :species
  belongs_to :region

end
