class AddHotsaleIdToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :hotsale_id, :integer
  end
end
