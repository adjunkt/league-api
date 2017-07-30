require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is invalid with duplicate email' do
    create(:user, email: 'crosby@penguins.com')

    expect(build(:user, email: 'crosby@penguins.com')).to be_invalid
  end

  describe 'password validation' do
    it 'requires number' do
      user = build(:user, password: '@Aaaaaaa')

      expect(user).to be_invalid
    end

    it 'requires lower character' do
      user = build(:user, password: '@AAAAAA1')

      expect(user).to be_invalid
    end

    it 'requires upper character' do
      user = build(:user, password: '@aaaaaa1')

      expect(user).to be_invalid
    end

    it 'requires special character' do
      user = build(:user, password: 'aAaaaaa1')

      expect(user).to be_invalid
    end

    it 'requires 8 character minimum' do
      user = build(:user, password: '@Aaaaa1')

      expect(user).to be_invalid
    end

    it 'cannot match the last password' do
      user = create(:user, password: '@Aaaaaa1')
      user.password = '@Aaaaaa1'

      expect(user).to be_invalid
    end
  end
end
