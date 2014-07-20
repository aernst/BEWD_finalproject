json.array!(@quarters) do |quarter|
  json.extract! quarter, :id, :user_id, :date, :quarter_num, :task, :completed
  json.url quarter_url(quarter, format: :json)
end
