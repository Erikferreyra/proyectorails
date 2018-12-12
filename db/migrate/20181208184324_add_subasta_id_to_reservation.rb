class AddSubastaIdToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :subasta_id, :integer
  end
end
