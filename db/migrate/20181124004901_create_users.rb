class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :fechanac
      t.string :email
      t.string :clave

      t.timestamps
    end
  end
end
