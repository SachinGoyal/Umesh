json.array!(@buyer_bank_details) do |buyer_bank_detail|
  json.extract! buyer_bank_detail, :id, :bank_name, :bank_address, :ifsc_code, :note
  json.url buyer_bank_detail_url(buyer_bank_detail, format: :json)
end
