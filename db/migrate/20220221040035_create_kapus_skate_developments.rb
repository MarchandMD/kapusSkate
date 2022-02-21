class CreateKapusSkateDevelopments < ActiveRecord::Migration[6.0]
  def change
    create_table :kapus_skate_developments do |t|

      t.timestamps
    end
  end
end
