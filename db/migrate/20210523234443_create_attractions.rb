class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.decimal :price
      t.date :date
      t.belongs_to :location

      t.timestamps
    end
  end
end
