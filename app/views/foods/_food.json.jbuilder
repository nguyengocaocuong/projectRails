json.extract! food, :id, :name, :price, :total, :decription, :vote, :created_at, :updated_at
json.url food_url(food, format: :json)
