class ChangePriceInTrips < ActiveRecord::Migration[6.0]
  def change
    rename_column :trips, :price, :price_cents
  end
end
