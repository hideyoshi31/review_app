class Product < ActiveRecord::Base
  validates :name, :user_id, presence: true
end
