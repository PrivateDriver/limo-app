class CreateEventStageChanges < ActiveRecord::Migration[7.0]
  def change
    create_table :event_stage_changes do |t|
      t.references :event, null: false, foreign_key: true
      t.string :type
      t.json :details

      t.timestamps
    end
  end
end
