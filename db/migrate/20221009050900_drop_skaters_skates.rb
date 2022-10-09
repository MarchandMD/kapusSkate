class DropSkatersSkates < ActiveRecord::Migration[6.1]
  def change
    drop_table :skaters_skates
  end
end
