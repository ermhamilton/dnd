class JobClass < ActiveRecord::Base
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :abilities
end