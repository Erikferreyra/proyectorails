class AddValuesToSubasta < ActiveRecord::Migration[5.1]
  def change
    add_column :subasta, :id_postor, :integer
  end
end
