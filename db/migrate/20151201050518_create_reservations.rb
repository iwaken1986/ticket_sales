class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :event, index: true, foreign_key: true
      t.string :name
      t.string :tel

      t.timestamps null: false
    end
  end
end
