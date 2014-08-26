class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :date, :datetime
      t.column :latitude, :float, :precision => 10, :scale => 6
      t.column :longitude, :float, :precision => 10, :scale => 6
      t.column :species_id, :integer
      t.column :quantity, :integer

      t.timestamps
    end
  end
end
