json.array!(@items) do |item|
  json.extract! item, :id, :item_code, :article_no, :jc, :price, :description
  json.url item_url(item, format: :json)
end
