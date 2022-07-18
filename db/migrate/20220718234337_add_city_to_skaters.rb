class AddCityToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_column :skaters, :city, :string
  end
end
