json.array!(@check_outs) do |check_out|
  json.extract! check_out, :id, :item_id, :user_id, :check_out_date, :return_date
  json.url check_out_url(check_out, format: :json)
end
