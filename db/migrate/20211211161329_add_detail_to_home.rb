class AddDetailToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :detail, :text
  end
end
