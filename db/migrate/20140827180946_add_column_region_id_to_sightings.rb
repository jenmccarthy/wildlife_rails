class AddColumnRegionIdToSightings < ActiveRecord::Migration
  def change
    add_column :sightings, :region_id, :integer
  end
end
