class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :social_security, limit: 9
      t.string :phone_primary
      t.string :license
      t.boolean :cdl
      t.boolean :concealed_weapons
      t.boolean :armed_security
      t.boolean :background_verified

      t.timestamps
    end
  end
end
