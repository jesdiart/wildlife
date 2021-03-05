class AddDescriptionColumnToRegion < ActiveRecord::Migration[6.1]
  def change
    add_column :regions, :description, :text
  end
end
