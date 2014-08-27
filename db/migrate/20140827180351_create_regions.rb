class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :name, :string
    end
  end
end
