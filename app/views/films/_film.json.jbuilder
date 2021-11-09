json.extract! film, :id, :name, :category, :ribbon_id, :created_at, :updated_at
json.url film_url(film, format: :json)
