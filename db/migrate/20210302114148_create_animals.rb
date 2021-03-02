class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :binomial_name
      t.string :class

      t.timestamps
    end
  end
end
