json.array!(@days) do |day|
  json.extract! day, :id, :user_id, :date, :task
  json.url day_url(day, format: :json)
end
