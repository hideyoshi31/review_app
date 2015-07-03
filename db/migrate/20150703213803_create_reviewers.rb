class CreateReviewers < ActiveRecord::Migration
  def change
    create_table :reviewers do |t|
      t.string :name
      t.integer :star
      t.string :comment
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
