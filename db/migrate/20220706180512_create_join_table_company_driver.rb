class CreateJoinTableCompanyDriver < ActiveRecord::Migration[7.0]
  def change
    create_join_table :companies, :drivers do |t|
      t.index [:company_id, :driver_id]
      t.index [:driver_id, :company_id]
    end
  end
end
