class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :fuel_type
      t.decimal :distance
      t.string :access_times

      t.timestamps
    end
  end
end
