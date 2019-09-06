require 'rails_helper'

RSpec.describe UserProfile, type: :model do
  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:gender) }
    it do
      should allow_value('Gorodotska 289/64').
      for(:adress).
      on(:create)
    end

    it do
      should allow_value(380935448692).
      for(:phone_number).
      on(:create)
    end
  end
end
