class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :library, null: false, foreign_key: true
      t.string :bookid
      t.string :title
      t.references :author, null: false, foreign_key: true
      t.string :isbn
      t.string :publication_year
      t.references :genre, null: false, foreign_key: true
      t.text :description
      t.string :avaibility

      t.timestamps
    end
  end
end
