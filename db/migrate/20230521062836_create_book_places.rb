class CreateBookPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :book_places do |t|
      t.references :library, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.references :floor, null: false, foreign_key: true
      t.string :shelve
      t.string :row

      t.timestamps
    end
  end
end
