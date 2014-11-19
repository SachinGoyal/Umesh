json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :company_name, :address, :zip_code, :state, :country, :email, :telephone_no, :mobile_number, :comment
  json.url supplier_url(supplier, format: :json)
end
