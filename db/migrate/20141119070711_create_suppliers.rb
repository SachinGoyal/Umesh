class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :company_name
      t.text :address
      t.string :zip_code
      t.string :state
      t.string :country
      t.string :email
      t.string :telephone_no
      t.string :mobile_number
      t.text :comment

      t.timestamps
    end
  end
end
