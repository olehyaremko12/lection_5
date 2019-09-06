class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  has_many :likes

  validates :comment, presence: true
  validates :name_whom_add_comment, presence: true

end
