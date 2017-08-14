require 'rails_helper'

RSpec.describe Sport, type: :model do
  it 'creates a sport' do
    expect(build(:sport, name: 'Hockey')).to be_valid
  end
end
