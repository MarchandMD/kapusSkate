class AddRefToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_reference :skaters, :skate
  end
end
