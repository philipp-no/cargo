class AddCustomFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :car_type, :string
    add_column :users, :age, :integer
    add_column :users, :years_driving, :integer
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
  end
end
