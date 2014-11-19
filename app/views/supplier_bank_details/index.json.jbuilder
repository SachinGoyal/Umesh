json.array!(@supplier_bank_details) do |supplier_bank_detail|
  json.extract! supplier_bank_detail, :id, :bank_name, :bank_address, :ifsc_code, :note
  json.url supplier_bank_detail_url(supplier_bank_detail, format: :json)
end
