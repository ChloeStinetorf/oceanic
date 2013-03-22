class CreateSeatsTable < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :name
      t.integer :user_id
      t.integer :flight_id
      t.integer :plane_id
      t.timestamps
    end
  end
end
