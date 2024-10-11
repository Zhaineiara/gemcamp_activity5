class AddSupplierToProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :supplier_id if column_exists?(:products, :supplier_id)
    add_reference :products, :supplier, null: true, foreign_key: true
  end
end
