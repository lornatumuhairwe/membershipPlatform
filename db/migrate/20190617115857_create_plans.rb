class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.integer :category

      t.timestamps
    end
  end
end
