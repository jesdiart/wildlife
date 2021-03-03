class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :spotter
      t.datetime :date
      t.float :latitude
      t.float :longitude
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
