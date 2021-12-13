json.extract! home_review, :id, :user_id, :home_id, :review, :created_at, :updated_at
json.url home_review_url(home_review, format: :json)
