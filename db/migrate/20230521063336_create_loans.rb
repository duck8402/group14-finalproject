class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :loanid
      t.references :library, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.date :loan_date
      t.date :due_date
      t.date :return_date

      t.timestamps
    end
  end
end
