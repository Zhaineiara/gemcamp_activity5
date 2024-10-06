class AddExpiryDateToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :expiry_date, :date
  end
end
