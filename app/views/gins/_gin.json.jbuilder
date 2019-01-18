json.extract! gin, :id, :name, :slug, :description, :snippet, :distillary_id, :created_at, :updated_at
json.url gin_url(gin, format: :json)
