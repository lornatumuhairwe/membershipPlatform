class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :dob, null: false
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
