class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
