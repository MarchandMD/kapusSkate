class AddRinksToSkates < ActiveRecord::Migration[6.1]
  def change
    add_reference :skates, :rink, null: false, foreign_key: true
  end
end
