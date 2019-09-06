require 'rails_helper'

RSpec.describe Like, type: :model do
   describe 'associations' do
    it { should belong_to(:user).class_name('User') }
    it { should belong_to(:comment).class_name('Comment') }
    it { should belong_to(:tweet).class_name('Tweet') }
  end

  describe 'validations' do
    it { should validate_numericality_of(:your_likes) }
    it { is_expected.to validate_presence_of(:your_likes) }
    it { is_expected.to validate_presence_of(:name_whom_add_like) }
  end
end

