class AddAdjudicadaToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :adjudicada, :boolean,default: false
  end
end
