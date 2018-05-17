class CreateBars < ActiveRecord::Migration[5.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :type
      t.string :description
      t.integer :crawl_id
      t.float :rating
      t.timestamps
    end
  end
end
