class CreateSubasta < ActiveRecord::Migration[5.1]
  def change
    create_table :subasta do |t|
      t.date :fechainicio
      t.text :descripcion
      t.string :titulo
      t.integer :idreserva
      t.integer :idganador
      t.integer :pujamax

      t.timestamps
    end
  end
end
