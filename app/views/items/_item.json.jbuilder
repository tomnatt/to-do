json.extract! item, :id, :item_name, :description, :urgency, :importance, :created_at, :updated_at
json.url item_url(item, format: :json)
