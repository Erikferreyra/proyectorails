class ChangeSubastaToAuctions < ActiveRecord::Migration[5.1]
  def change
      rename_table :subasta, :auctions
  end
end
