json.array!(@reviewers) do |reviewer|
  json.extract! reviewer, :id, :name, :star, :comment, :product_id, :user_id
  json.url reviewer_url(reviewer, format: :json)
end
