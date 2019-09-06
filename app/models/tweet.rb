class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :content, length: { maximum: 240 }
end
