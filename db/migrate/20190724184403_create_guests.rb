class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :favorite_city
      t.integer :num_of_bookings

      t.timestamps
    end
  end
end
