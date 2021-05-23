class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.decimal :price
      t.string :img
      t.date :date
      t.location :belongs_to

      t.timestamps
    end
  end
end
