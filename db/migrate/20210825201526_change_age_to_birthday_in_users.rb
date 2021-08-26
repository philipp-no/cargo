class ChangeAgeToBirthdayInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :age, :birthday
  end
end
