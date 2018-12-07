class AddNewValuesToHomes < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :ciudad, :string
    add_column :homes, :direccion, :string
  end
end
