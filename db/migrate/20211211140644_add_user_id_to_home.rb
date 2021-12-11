class AddUserIdToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :user_id, :integer
    add_index :homes, :user_id
  end
end
