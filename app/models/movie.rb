class Movie < ActiveRecord::Base
  has_many :franchises, dependent: :destroy, as: :franchable
  has_many :castings, dependent: :destroy, as: :castable
  has_many :awards, dependent: :destroy, as: :awardable

  has_and_belongs_to_many :companies
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :genres
end
