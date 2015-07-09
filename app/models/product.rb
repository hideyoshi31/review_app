class Product < ActiveRecord::Base
  validates :name, :user_id, presence: true
  has_many :reviewers, dependent: :destroy
end
