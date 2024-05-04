# db/migrate/xxxxxxxx_change_status_column_type_in_users.rb

class ChangeStatusColumnTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :status, :string, default: "active"
  end
end
