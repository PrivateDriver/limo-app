class ChangeDriverNameToSingleField < ActiveRecord::Migration[7.0]
  def change
    remove_column :drivers, :first_name
    remove_column :drivers, :last_name
    add_column :drivers, :name, :string
    add_column :drivers, :nickname, :string
  end
end
