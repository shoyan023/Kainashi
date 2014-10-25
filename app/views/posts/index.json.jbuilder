json.array!(@posts) do |post|
  json.extract! post, :id, :theme_id, :user_id, :content, :posted_at
  json.url post_url(post, format: :json)
end
