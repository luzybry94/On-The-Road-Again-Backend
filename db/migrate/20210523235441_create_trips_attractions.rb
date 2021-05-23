class CreateTripsAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :trips_attractions do |t|
      t.trip :belongs_to
      t.attraction :belongs_to

      t.timestamps
    end
  end
end
