class AddImageUrlToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :image_url, :text
  end
end
