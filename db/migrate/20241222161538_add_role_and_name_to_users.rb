class AddRoleAndNameToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :role, :string, default: "buyer", null: false
    add_column :users, :name, :string, null: false
  end
end
