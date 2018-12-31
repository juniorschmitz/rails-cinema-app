json.extract! movie, :id, :name, :classification_age, :synopsis, :ticket_price, :catalog_image, :created_at, :updated_at
json.url movie_url(movie, format: :json)
