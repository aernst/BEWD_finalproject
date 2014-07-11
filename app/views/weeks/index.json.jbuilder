json.array!(@weeks) do |week|
  json.extract! week, :id, :user_id, :date, :week_num, :task
  json.url week_url(week, format: :json)
end
