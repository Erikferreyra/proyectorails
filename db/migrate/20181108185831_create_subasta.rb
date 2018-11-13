class CreateSubasta < ActiveRecord::Migration[5.1]
  def change
    create_table :subasta do |t|
      t.date :fechainicio
      t.text :descripcion
      t.string :titulo
      t.integer :usuario_id
      t.integer :pujamax
      t.references :reservation, index: true 
      t.timestamps
    end
  end
end
