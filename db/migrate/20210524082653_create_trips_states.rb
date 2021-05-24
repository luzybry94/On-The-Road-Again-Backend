class CreateTripsStates < ActiveRecord::Migration[6.0]
  def change
    create_table :trips_states do |t|
      t.belongs_to :trip
      t.belongs_to :state


      t.timestamps
    end
  end
end
