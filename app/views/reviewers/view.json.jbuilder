json.array!(@reviewers) do |reviewer|
  json.extract! reviewer, :id, :name, :star, :comment, :vote_y, :vote_n, :created_at, :hide
end