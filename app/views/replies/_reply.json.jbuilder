json.extract! reply, :id, :post_id, :body, :user_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
