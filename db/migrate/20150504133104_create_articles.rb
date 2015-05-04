class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :price
      t.string :image

      t.timestamps null: false
    end
  end
end
