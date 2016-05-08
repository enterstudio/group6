class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :lat, precision: 9, scale: 7
      t.decimal :long, precision: 9, scale: 7

      t.timestamps null: false
    end
  end
end
