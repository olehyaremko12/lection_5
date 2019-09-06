require 'rails_helper'

RSpec.describe User, type: :model do
  # describe 'associations' do
  #   it { should belong_to(:user).class_name('User') }
  # end
  describe 'validations' do
    it { should validate_length_of(:password).is_at_least(6) }
    it do
      user = User.new
      expect(user).not_to allow_value('saa').for(:login)
    end
    it do
      should allow_value('yaremko@ukr.net').
      for(:email).
      on(:create)
    end
  end
end
