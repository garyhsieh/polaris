# Migration file to create posts table
class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :short_description
      t.integer :user_id, null: false
      t.text :tagging_details
      t.time :publish_date

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
