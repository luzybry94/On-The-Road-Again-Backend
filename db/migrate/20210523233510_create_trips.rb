class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :region
      t.string :img
      t.date :start_date
      t.date :end_date
      t.user :belongs_to

      t.timestamps
    end
  end
end
