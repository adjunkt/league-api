require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'creates an organization' do
    expect(build(:organization, name: 'My Organization')).to be_valid
  end

  it 'has many sports' do
    organization = create(:organization, sports: [
      create(:sport, name: 'Hockey'),
      create(:sport, name: 'Lacrosse'),
      create(:sport, name: 'Soccer')
    ])

    expect(organization.sports.length).to eq(3)
  end
end
