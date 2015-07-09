class Reviewer < ActiveRecord::Base
  validates :name, :star, :comment, :product_id, :user_id, presence: true
  belongs_to :product
end
