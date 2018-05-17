class CreateCrawls < ActiveRecord::Migration[5.1]
  def change
    create_table :crawls do |t|
      t.integer :user_id
      t.string :name
      t.boolean :walkable, :default => true
      t.boolean :public, :default => false
      t.string :neighborhood
      t.integer :length
      t.float :distance
      t.timestamps
    end
  end
end
