class RemoveUserIdFromReviewers < ActiveRecord::Migration
  def change
    remove_column :reviewers, :user_id, :integer
  end
end
