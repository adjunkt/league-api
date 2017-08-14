require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'creates an organization' do
    create(:organization, name: 'My Organization')

    expect(build(:organization, name: 'My Organization')).to be_valid
  end
end
