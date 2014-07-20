json.array!(@years) do |year|
  json.extract! year, :id, :user_id, :date, :quarter_num, :task, :completed
  json.url year_url(year, format: :json)
end
