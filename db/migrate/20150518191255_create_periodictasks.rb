class CreatePeriodictasks < ActiveRecord::Migration
  def change
    create_table :periodictasks do |t|

      t.timestamps null: false
    end
  end
end
