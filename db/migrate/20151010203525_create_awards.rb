class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|

      t.timestamps null: false
    end

    def self.up
      create_table :awards do |t|
        t.integer :role
        t.boolean :nomination
        t.integer :year
        t.belongs_to :movie, :index => true
        t.belongs_to :person, :index => true
        t.references :awardable, :polymorphic => true, :index => true

        t.timestamps null: false
      end
    end

    def self.down
      change_table :awards do |t|
        t.remove_references :awardable, :polymorphic => true
      end
    end
  end
end
