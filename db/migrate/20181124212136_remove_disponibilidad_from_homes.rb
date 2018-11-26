class RemoveDisponibilidadFromHomes < ActiveRecord::Migration[5.1]
  def change
    remove_column :homes, :disponibilidad, :string
  end
end
