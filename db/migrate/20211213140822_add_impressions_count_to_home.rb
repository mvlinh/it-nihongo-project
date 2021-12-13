class AddImpressionsCountToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :impressions_count, :integer
  end
end
