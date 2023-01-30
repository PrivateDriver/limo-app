class RemoveSsnFromDrivers < ActiveRecord::Migration[7.0]
  def change
    remove_column :drivers, :social_security
  end
end
