class AddNewValuesToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :id_adjudicado, :integer
  end
end
