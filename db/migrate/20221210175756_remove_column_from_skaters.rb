class RemoveColumnFromSkaters < ActiveRecord::Migration[6.1]
  def change
    remove_column :skaters, :skate_id
  end
end
