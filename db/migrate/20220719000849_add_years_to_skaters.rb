class AddYearsToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_column :skaters, :years, :string
  end
end
