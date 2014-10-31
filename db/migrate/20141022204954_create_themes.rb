class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.text :name
      t.date :posted_at

      t.timestamps
    end
  end
end
