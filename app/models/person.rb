class Person < ActiveRecord::Base
  has_many :castings, dependent: :destroy
  has_many :awards, as: :awardable
end
