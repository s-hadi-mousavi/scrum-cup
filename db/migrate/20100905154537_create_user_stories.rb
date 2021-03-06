class CreateUserStories < ActiveRecord::Migration
  def self.up
    create_table :user_stories do |t|
      t.string :title
      t.text :description
      t.references :sprint
      t.references :project
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :user_stories
  end
end
