class CreateTripsAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :trips_attractions do |t|
      t.belongs_to :trip
      t.belongs_to :attraction

      t.timestamps
    end
  end
end
