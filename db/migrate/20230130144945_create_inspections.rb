class CreateInspections < ActiveRecord::Migration[7.0]
  def change
    create_table :inspections do |t|
      t.integer :exterior_cleanliness
      t.integer :interior_cleanliness
      t.text :comments

      t.timestamps
    end
  end
end
