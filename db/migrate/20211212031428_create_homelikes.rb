class CreateHomelikes < ActiveRecord::Migration[6.1]
  def change
    create_table :homelikes do |t|
      t.integer :user_id
      t.integer :home_id
      t.integer :status

      t.timestamps
    end
  end
end
