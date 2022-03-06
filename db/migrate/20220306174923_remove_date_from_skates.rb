class RemoveDateFromSkates < ActiveRecord::Migration[6.0]
  def change
    remove_column :skates, :date
  end
end
