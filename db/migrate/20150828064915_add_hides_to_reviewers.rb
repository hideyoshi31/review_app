class AddHidesToReviewers < ActiveRecord::Migration
  def change
    add_column :reviewers, :hide, :boolean
  end
end
