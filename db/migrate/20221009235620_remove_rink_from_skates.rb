class RemoveRinkFromSkates < ActiveRecord::Migration[6.1]
  def change
    remove_column :skates, :rink
  end
end
