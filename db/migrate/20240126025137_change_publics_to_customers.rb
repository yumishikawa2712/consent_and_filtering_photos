class ChangePublicsToCustomers < ActiveRecord::Migration[7.0]
  def change
    rename_table :publics, :customers
  end
end
