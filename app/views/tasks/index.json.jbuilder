json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :category, :due, :importance
  json.url task_url(task, format: :json)
end
