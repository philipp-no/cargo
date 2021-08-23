class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :start_location
      t.string :end_location
      t.money :price
      t.string :capacity
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
