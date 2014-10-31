class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :current_user_id

      t.timestamps
    end
  end
end
