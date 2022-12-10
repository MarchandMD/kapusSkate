class RemoveColumnsFromSkates < ActiveRecord::Migration[6.1]
  def change
    remove_column :skates, :host, :string
    remove_column :skates, :public, :boolean
  end
end
