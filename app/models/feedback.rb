class Feedback < ApplicationRecord
  validates :title, :body, :rating, presence: true

  belongs_to :user
  belongs_to :product
end
