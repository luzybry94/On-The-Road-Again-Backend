class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :content
      t.boolean :completed
      t.belongs_to :trip

      t.timestamps
    end
  end
end
