class AddRouteToCrawl < ActiveRecord::Migration[5.1]
  def change
    add_column :crawls, :route, :string, :array => true
  end
end
