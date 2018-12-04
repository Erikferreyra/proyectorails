class RemoveInitialValuesFromHomes < ActiveRecord::Migration[5.1]
  def change
    remove_column :homes, :ubicacion, :string
  end
end
