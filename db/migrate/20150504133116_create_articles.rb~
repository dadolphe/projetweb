class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.decimal :price
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4

      t.integer :user_id	

      t.timestamps null: false
    end
  end
end
