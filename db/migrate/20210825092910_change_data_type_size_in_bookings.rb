class ChangeDataTypeSizeInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :size, :string 
  end
end
