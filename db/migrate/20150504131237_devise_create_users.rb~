class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :firstname
      t.integer :promo
      t.string :mail
      t.integer :phonenumber
      t.string :avatar

      t.timestamps null: false
    end
  end
end
