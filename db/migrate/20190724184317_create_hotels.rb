class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :age
      t.integer :capacity

      t.timestamps
    end
  end
end
