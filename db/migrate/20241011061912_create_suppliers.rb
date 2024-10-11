class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :company_name
      t.string :contact_info

      t.timestamps
    end
  end
end
