class AddUserToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :fechanac, :date
    add_column :users, :numtarjeta, :string
    add_column :users, :titulartarjeta, :string
    add_column :users, :fechavenc, :date
    add_column :users, :claveseguridad, :integer
  end
end
