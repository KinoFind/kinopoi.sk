class Franchise < ActiveRecord::Base
  belongs_to :franchable, polymorphic: true
  belongs_to :movie
end
