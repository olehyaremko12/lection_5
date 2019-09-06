class Like < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :tweet

  validates :your_likes, presence: true, numericality: { other_than: 0 }
  validates :name_whom_add_like, presence: true
end
