json.array!(@items) do |item|
  json.extract! item, :id, :name, :model, :checked_out
  json.url item_url(item, format: :json)
end
