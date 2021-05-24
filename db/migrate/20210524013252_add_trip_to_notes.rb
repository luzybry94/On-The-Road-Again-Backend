class AddTripToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :trip, null: false, foreign_key: true
  end
end
