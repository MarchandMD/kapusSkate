class AddPositionToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_column :skaters, :position, :string
  end
end
