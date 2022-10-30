class SetRinkAddressToAllowNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :rinks, :address, true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
