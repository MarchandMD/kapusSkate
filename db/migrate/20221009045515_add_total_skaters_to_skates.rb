class AddTotalSkatersToSkates < ActiveRecord::Migration[6.1]
  def change
    add_column :skates, :total_skaters, :integer
  end
end
