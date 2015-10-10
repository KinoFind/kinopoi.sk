class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.string :title_alt
      t.string :tagline
      t.string :mpaa_rating
      t.time :duration
      t.text :description
      t.text :description_html

      t.datetime :declared_at
      t.datetime :released_at
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :movies
  end
end
