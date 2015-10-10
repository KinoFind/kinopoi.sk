class CreateMoviesGenres < ActiveRecord::Migration
  def self.up
    create_join_table :movies, :genres do |t|
      t.index [:movie_id, :genre_id]
      t.index [:genre_id, :movie_id]
    end
  end

  def self.down
    drop_join_table :movies, :genres
  end
end
