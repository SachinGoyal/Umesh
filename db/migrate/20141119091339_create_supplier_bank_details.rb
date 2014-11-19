class CreateSupplierBankDetails < ActiveRecord::Migration
  def change
    create_table :supplier_bank_details do |t|
      t.string :bank_name
      t.text :bank_address
      t.string :ifsc_code
      t.text :note
      t.references :supplier
      t.timestamps
    end
  end
end
