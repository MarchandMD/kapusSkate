class AddDatesToSkates < ActiveRecord::Migration[6.0]
  def change
    add_column :skates, :date, :date
  end
end
