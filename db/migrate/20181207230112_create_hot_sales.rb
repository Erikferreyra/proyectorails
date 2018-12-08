class CreateHotSales < ActiveRecord::Migration[5.1]
  def change
    create_table :hot_sales do |t|
    	t.references :reservation, index: true 
      t.timestamps
    end
  end
end
