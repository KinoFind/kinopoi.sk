class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :companies
  end
end
