class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :content
      t.user :belongs_to

      t.timestamps
    end
  end
end
