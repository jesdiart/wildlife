class AddRegionToSightings < ActiveRecord::Migration[6.1]
  def change
    add_reference :sightings, :region, index: true
  end
end
