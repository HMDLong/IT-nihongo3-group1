json.extract! order, :id, :food_id, :name, :phone, :address, :created_at, :updated_at
json.url order_url(order, format: :json)
