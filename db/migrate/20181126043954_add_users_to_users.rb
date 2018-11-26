class AddUsersToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :fechanac, :date
    add_column :users, :tipousuario, :boolean
  end
end
