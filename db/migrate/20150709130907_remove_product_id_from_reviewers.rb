class RemoveProductIdFromReviewers < ActiveRecord::Migration
  def change
    remove_column :reviewers, :product_id, :integer
  end
end
