class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :address
      t.integer :room_number
      t.integer :price

      t.timestamps
    end
  end
end
