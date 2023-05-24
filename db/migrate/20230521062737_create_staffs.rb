class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.references :library, null: false, foreign_key: true
      t.string :staffid
      t.string :staffname
      t.string :staffphone
      t.string :salary
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
