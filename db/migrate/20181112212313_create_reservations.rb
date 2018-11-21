class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :nombre
      t.date :fecha_ini
      t.references :home, index: true 
      t.timestamps
    end
  end
end
