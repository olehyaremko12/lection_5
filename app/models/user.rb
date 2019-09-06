class User < ApplicationRecord
  has_many :tweets
  has_many :likes
  has_many :comments
  has_one :user_profile

  validates :login, format: { with: /\A[a-z0-9_]{4,16}\z/ }
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :password, length: { minimum: 6 }

end
