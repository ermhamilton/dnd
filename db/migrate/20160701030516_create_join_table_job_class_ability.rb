class CreateJoinTableJobClassAbility < ActiveRecord::Migration
  def change
    create_join_table :job_classes, :abilities do |t|
      # t.index [:job_class_id, :ability_id]
      # t.index [:ability_id, :job_class_id]
    end
  end
end
