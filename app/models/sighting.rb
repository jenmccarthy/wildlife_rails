class Sighting < ActiveRecord::Base
  validates :date, :presence => true
end
