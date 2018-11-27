class DropTableAdm < ActiveRecord::Migration[5.1]
  def change
    drop_table :adms
  end
end
