class AddSkillLevelToSkaters < ActiveRecord::Migration[6.1]
  def change
    add_column :skaters, :skill_level, :integer
  end
end
