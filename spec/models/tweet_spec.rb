require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end
  describe 'validations' do
    it { should validate_length_of(:content).is_at_most(240) }
  end
end
