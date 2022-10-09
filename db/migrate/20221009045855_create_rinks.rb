class CreateRinks < ActiveRecord::Migration[6.1]
  def change
    create_table :rinks do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
