class CreateBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :backgrounds do |t|
      t.string :name
      t.text :description
      t.string :skill_proficiencies
      t.string :tool_proficiencies
      t.string :languages
      t.text :equipment
      t.text :feature
      
      t.timestamps
    end
  end

  def self.down
    drop_table :backgrounds
  end
end