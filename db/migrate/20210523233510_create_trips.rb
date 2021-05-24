class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :region
      t.date :start_date
      t.date :end_date
      t.belongs_to :user

      t.timestamps
    end
  end
end
