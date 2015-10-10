class Person < ActiveRecord::Base
  has_many :castings, dependent: :destroy
end
