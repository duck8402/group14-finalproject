class CreateBookReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :book_reviews do |t|
      t.references :library, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.references :rating, null: false, foreign_key: true
      t.text :comment
      t.date :reviewdate

      t.timestamps
    end
  end
end
