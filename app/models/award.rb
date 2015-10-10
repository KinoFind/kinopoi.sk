class Award < ActiveRecord::Base
  belongs_to :awardable, polymorphic: true
  belongs_to :movie
  belongs_to :person
end
