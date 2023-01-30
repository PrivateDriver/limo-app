class AssociateEventToInspections < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :checkout_inspection, index: true, foreign_key: { to_table: "inspections" }
    add_reference :events, :checkin_inspection, index: true, foreign_key: { to_table: "inspections" }
  end
end
