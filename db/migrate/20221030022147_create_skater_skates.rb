class CreateSkaterSkates < ActiveRecord::Migration[6.1]
  def change
    create_table :skater_skates do |t|
      t.references :skate, null: false, foreign_key: true
      t.references :skater, null: false, foreign_key: true

      t.timestamps
    end
  end
end
