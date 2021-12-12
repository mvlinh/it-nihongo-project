class CreateHomeReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :home_reviews do |t|
      t.integer :user_id
      t.integer :home_id
      t.text :review

      t.timestamps
    end
  end
end
