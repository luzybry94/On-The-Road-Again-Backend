class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :pricing
      t.date :date
      t.string :img
      t.string :location

      t.timestamps
    end
  end
end
