class AddRefersToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :company, null: false, foreign_key: true
    add_reference :events, :vehicle, null: false, foreign_key: true
    add_reference :events, :driver, null: false, foreign_key: true
  end
end
