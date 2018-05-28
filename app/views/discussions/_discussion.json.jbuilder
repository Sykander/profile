json.extract! discussion, :id, :title, :body, :user_id, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
