class CreateJoinTableSkillBackground < ActiveRecord::Migration
  def change
    create_join_table :skills, :backgrounds do |t|
      # t.index [:skill_id, :background_id]
      # t.index [:background_id, :skill_id]
    end
  end
end
