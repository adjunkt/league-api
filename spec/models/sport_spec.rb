require 'rails_helper'

RSpec.describe Sport, type: :model do
  it 'creates a sport' do
    expect(
      build(:sport, organization_id: 1, sport_type_id: 1)
    ).to be_valid
  end
end
