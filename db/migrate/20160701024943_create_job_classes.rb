class CreateJobClasses < ActiveRecord::Migration
  def self.up
    create_table :job_classes do |t|
      t.string :name
      t.boolean :caster
      t.string :saving_throws
      t.string :skill_proficiencies
      t.string :hit_dice
      t.string :armor_proficiencies
      t.string :weapon_proficiencies
      t.string :tool_proficiencies
      t.text :equipment
      t.text :level_1_features
      t.text :level_2_features
      t.text :level_3_features
      t.text :level_4_features
      t.text :level_5_features
      t.text :level_6_features
      t.text :level_7_features
      t.text :level_8_features
      t.text :level_9_features
      t.text :level_10_features
      t.text :level_11_features
      t.text :level_12_features
      t.text :level_13_features
      t.text :level_14_features
      t.text :level_15_features
      t.text :level_16_features
      t.text :level_17_features
      t.text :level_18_features
      t.text :level_19_features
      t.text :level_20_features
      
      t.timestamps
    end
  end

  def self.down
    drop_table :job_classes
  end
end