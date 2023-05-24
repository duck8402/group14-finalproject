class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.references :library, null: false, foreign_key: true
      t.string :memberid
      t.string :name
      t.date :date_of_birth
      t.string :phone
      t.string :membership_status

      t.timestamps
    end
  end
end
