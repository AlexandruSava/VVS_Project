require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid if email and password are present' do
    user = described_class.new(email: 'alex@alex.com', password: 'timisoara')
    expect(user).to be_valid
  end
end
