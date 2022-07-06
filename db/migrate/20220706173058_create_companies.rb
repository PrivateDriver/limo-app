class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :business_name
      t.string :owner_name
      t.string :phone_primary
      t.string :ein
      t.string :insurance_policy_number
      t.string :insurance_phone

      t.timestamps
    end
  end
end
