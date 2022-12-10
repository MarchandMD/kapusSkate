class RemoveColumnsFromRinks < ActiveRecord::Migration[6.1]
  def change
    remove_column :rinks, :city, :string
    remove_column :rinks, :state, :string
    remove_column :rinks, :phone, :string
  end
end
