require 'rails_helper'

RSpec.describe League, type: :model do
  it 'creates a league' do
    organization = create(:organization)
    sport = create(:sport)

    expect(
      build(
        :league,
        name: 'Peewee',
        organization: organization,
        sport: sport
      )
    ).to be_valid
  end

  it 'is invalid without a name' do
    organization = create(:organization)
    sport = create(:sport)

    expect(
      build(
        :league,
        name: nil,
        organization: organization,
        sport: sport
      )
    ).to_not be_valid
  end
end
