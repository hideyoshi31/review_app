class AddVotesToReviewers < ActiveRecord::Migration
  def change
    add_column :reviewers, :vote_y, :integer
    add_column :reviewers, :vote_n, :integer
  end
end
