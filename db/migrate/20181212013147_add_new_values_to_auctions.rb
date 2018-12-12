class AddNewValuesToAuctions < ActiveRecord::Migration[5.1]
  def change
    add_column :auctions, :pujamax, :integer, :default => 0
  end
end
