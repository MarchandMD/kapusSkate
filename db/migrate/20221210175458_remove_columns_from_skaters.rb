class RemoveColumnsFromSkaters < ActiveRecord::Migration[6.1]
  def change
    remove_column :skaters, :name, :string
    remove_column :skaters, :phone, :string
    remove_column :skaters, :skill_level, :integer
    remove_column :skaters, :position, :string
    remove_column :skaters, :user_name, :string
    remove_column :skaters, :city, :string
    remove_column :skaters, :last_level, :string
    remove_column :skaters, :years, :string
  end
end
