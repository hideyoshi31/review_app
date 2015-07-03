json.array!(@reviewers) do |reviewer|
if((current_user.id == product.user_id)||(current_user.id == 1))
  json.extract! reviewer, :id, :name, :star, :comment, :product_id, :user_id
  json.url reviewer_url(reviewer, format: :json)
end
end
