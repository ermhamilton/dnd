class Skill < ActiveRecord::Base
  has_and_belongs_to_many :backgrounds
  has_and_belongs_to_many :abilities
end