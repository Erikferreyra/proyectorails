class CreateHotsales < ActiveRecord::Migration[5.1]
  def change
    create_table :hotsales do |t|
      t.float :precio
      t.integer :reservation_id

      t.timestamps
    end
  end
end
