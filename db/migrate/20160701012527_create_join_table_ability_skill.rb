class CreateJoinTableAbilitySkill < ActiveRecord::Migration
  def change
    create_join_table :abilities, :skills do |t|
      # t.index [:ability_id, :skill_id]
      # t.index [:skill_id, :ability_id]
    end
  end
end
