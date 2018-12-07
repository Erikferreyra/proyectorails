class AddPremiumUserToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :premium, :boolean, default: false 
    add_column :users, :fechavenc, :date
    add_column :users, :titulartarjeta, :string 
  end
end
