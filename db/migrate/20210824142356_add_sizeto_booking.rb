class AddSizetoBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :size, :integer
  end
end
