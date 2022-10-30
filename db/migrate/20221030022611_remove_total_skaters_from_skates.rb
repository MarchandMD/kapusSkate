class RemoveTotalSkatersFromSkates < ActiveRecord::Migration[6.1]
  def change
    remove_column :skates, :total_skaters
  end
end
