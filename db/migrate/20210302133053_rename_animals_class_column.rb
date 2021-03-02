class RenameAnimalsClassColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :animals, :class, :animal_class
  end
end
