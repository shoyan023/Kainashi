class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :theme_id
      t.integer :user_id
      t.text :content
      t.date :posted_at

      t.timestamps
    end
  end
end
