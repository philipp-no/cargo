class AddDriverBooleanToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :driver, :boolean, default: false
  end
end
