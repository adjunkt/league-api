require 'rails_helper'

RSpec.describe SportType, type: :model do
  it 'creates a sport_type' do
    expect(build(:sport_type, name: 'Hockey')).to be_valid
  end
end
