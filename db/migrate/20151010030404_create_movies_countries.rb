class CreateMoviesCountries < ActiveRecord::Migration
  def self.up
    create_join_table :movies, :countries do |t|
      t.index [:movie_id, :country_id]
      t.index [:country_id, :movie_id]
    end
  end

  def self.down
    drop_join_table :movies, :countries
  end
end
