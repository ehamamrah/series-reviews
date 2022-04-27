json.extract! review, :id, :series_id, :user, :stars, :description, :created_at, :updated_at
json.url review_url(review, format: :json)
