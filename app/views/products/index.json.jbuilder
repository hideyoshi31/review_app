json.array!(@products) do |product|
if((current_user.id == product.user_id)||(current_user.id == 1))
  json.extract! product, :id, :name, :user_id
  json.url product_url(product, format: :json)
end
end
