class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :name
      t.string :category
      t.integer :ticket_count

      t.timestamps null: false
    end
  end
end
