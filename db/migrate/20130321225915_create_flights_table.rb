class CreateFlightsTable < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name
      t.string :destination
      t.string :origin
      t.date :date
      t.integer :plane_id
      t.timestamps
    end
  end
end
