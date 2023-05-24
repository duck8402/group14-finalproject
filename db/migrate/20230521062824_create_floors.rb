class CreateFloors < ActiveRecord::Migration[7.0]
  def change
    create_table :floors do |t|
      t.string :floor_number

      t.timestamps
    end
  end
end
