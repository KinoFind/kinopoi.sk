class CreateCastings < ActiveRecord::Migration
  def self.up
    create_table :castings do |t|
      t.integer :role
      t.boolean :featured
      t.belongs_to :person, :index => true
      t.references :castable, :polymorphic => true, :index => true

      t.timestamps null: false
    end
  end

  def self.down
    change_table :castings do |t|
      t.remove_references :castable, :polymorphic => true
    end
  end
end
