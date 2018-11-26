class CreateAdms < ActiveRecord::Migration[5.1]
  def change
    create_table :adms do |t|
      t.string :usuario
      t.string :password

      t.timestamps
    end
  end
end
