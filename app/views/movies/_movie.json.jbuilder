json.extract! movie, :id, :title, :rating, :total_gross, :created_at, :updated_at
json.url movie_url(movie, format: :json)
