class AddIsReservedColumnToSeatsTable < ActiveRecord::Migration
  def change
    add_column :seats, :is_taken, :boolean, :default => false
  end
end
