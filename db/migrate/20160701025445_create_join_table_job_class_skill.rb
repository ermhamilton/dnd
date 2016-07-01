class CreateJoinTableJobClassSkill < ActiveRecord::Migration
  def change
    create_join_table :job_classes, :skills do |t|
      # t.index [:job_class_id, :skill_id]
      # t.index [:skill_id, :job_class_id]
    end
  end
end
