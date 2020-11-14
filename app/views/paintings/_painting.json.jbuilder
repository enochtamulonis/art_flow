json.extract! painting, :id, :name, :size, :price, :user_id, :created_at, :updated_at
json.url painting_url(painting, format: :json)
