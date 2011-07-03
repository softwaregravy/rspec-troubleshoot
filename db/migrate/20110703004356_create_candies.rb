class CreateCandies < ActiveRecord::Migration
  def self.up
    create_table :candies do |t|
      t.boolean :delicious
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :candies
  end
end
