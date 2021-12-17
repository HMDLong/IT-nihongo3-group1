json.extract! payment, :id, :user_id, :total, :created_at, :updated_at
json.url payment_url(payment, format: :json)
