class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :library_id
      t.text :address
      t.string :no_staff
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
