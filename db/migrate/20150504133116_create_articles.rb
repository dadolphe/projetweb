class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.decimal :price
      t.string :images
      t.integer :user_id	

      t.timestamps null: false
    end
  end
end
