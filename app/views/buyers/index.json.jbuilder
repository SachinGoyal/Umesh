json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :name, :company_name, :address, :zip_code, :state, :country, :email, :telephone_no, :mobile_number, :comment
  json.url buyer_url(buyer, format: :json)
end
