class AddTypeAndFragileOrValuableToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :item, :string
  end
end
