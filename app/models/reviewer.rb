class Reviewer < ActiveRecord::Base
  validates :name, :star, :comment, presence: true
end
