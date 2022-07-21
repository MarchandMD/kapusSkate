class CreateJoinTableSkatersSkates < ActiveRecord::Migration[6.1]
  def change
    create_join_table :skaters, :skates do |t|
      # t.index [:skater_id, :skate_id]
      # t.index [:skate_id, :skater_id]
    end
  end
end
