json.extract! blog, :id, :title, :snippet, :body, :slug, :tags, :created_at, :updated_at
json.url blog_url(blog, format: :json)
