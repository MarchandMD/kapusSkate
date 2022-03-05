class CreateSkates < ActiveRecord::Migration[6.0]
  def change
    create_table :skates do |t|
      t.string :date

      t.timestamps
    end
  end
end
