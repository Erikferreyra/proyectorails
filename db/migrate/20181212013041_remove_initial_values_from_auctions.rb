class RemoveInitialValuesFromAuctions < ActiveRecord::Migration[5.1]
  def change
    remove_column :auctions, :pujamax, :integer
  end
end
