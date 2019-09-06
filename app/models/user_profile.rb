class UserProfile < ApplicationRecord
  belongs_to :user
  validates :full_name, presence: true
  validates :gender, presence: true
  validates :adress, format: { with: /(?:\b(?:\d+\w*|[a-z'-]+)\s*)/ }
  validates :phone_number, format: { with: /(\A?:\+?\d{1,3}[- ]?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{2}[- ]?\d{2}\z/ }

end
