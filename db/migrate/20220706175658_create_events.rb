class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :mileage

      t.timestamps
    end
  end
end
