class AddPassworddigestToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_column :skaters, :password_digest, :string
  end
end
