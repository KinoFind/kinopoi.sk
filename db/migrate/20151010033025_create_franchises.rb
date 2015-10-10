class CreateFranchises < ActiveRecord::Migration
  def self.up
    create_table :franchises do |t|
      t.integer :role
      t.belongs_to :movie, :index => true
      t.references :franchable, :polymorphic => true, :index => true

      t.timestamps null: false
    end
  end

  def self.down
    change_table :franchises do |t|
      t.remove_references :franchable, :polymorphic => true
    end
  end
end
