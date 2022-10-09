class AddColumnsToSkates < ActiveRecord::Migration[6.1]
  def change
    add_column :skates, :host, :string
    add_column :skates, :public, :boolean
    add_column :skates, :rink, :string
  end
end
