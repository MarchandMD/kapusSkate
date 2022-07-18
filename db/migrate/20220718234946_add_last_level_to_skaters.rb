class AddLastLevelToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_column :skaters, :last_level, :string
  end
end
