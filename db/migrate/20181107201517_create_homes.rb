class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :nombre
      t.string :ubicacion
      t.integer :canthabitacion
      t.timestamps
    end

    add_index :homes, :nombre, unique: true

  end
end
