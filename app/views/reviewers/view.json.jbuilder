json.array!(@reviewers) do |reviewer|
  json.extract! reviewer, :id, :name, :star, :comment, :created_at
end