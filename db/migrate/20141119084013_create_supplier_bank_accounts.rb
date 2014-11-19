class CreateSupplierBankAccounts < ActiveRecord::Migration
  def change
    create_table :supplier_bank_accounts do |t|
      t.string :bank_name
      t.string :bank_address
      t.string :note
      t.string :ifsc_code
      t.string :ifsc_number
      t.references :supplier
      t.timestamps
    end
  end
end
