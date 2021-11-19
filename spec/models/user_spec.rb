# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid if email and password are present' do
    user = described_class.new(email: 'alexx@alex.com', password: 'timisoara')
    expect(user).to be_valid
  end

  it 'is valid if password has exactly 6 characters' do
    user = described_class.new(email: 'alexxx@alex.com', password: '123456')
    expect(user).to be_valid
  end

  it 'is valid if password has exactly 128 characters' do
    user = described_class.new(
      email: 'alex@alex.comm',
      password: 'timisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraatimisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraa'
    )
    expect(user).to be_valid
  end

  it 'is invalid if password is longer than 128 characters' do
    user = described_class.new(
      email: 'alex@alex.com',
      password: 'timisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraatimisoaratimisoaratimisoaratimisoaratimisoaratimisoaratimisoaraaa'
    )
    expect(user).not_to be_valid
  end

  it 'is invalid if password is missing' do
    user = described_class.new(email: 'alex@alex.com')
    expect(user).not_to be_valid
  end

  it 'is invalid if email is missing' do
    user = described_class.new(password: 'timisoara')
    expect(user).not_to be_valid
  end

  it 'is invalid if email has an incorrect format 1' do
    user = described_class.new(email: 'alex', password: 'timisoara')
    expect(user).not_to be_valid
  end

  it 'is invalid if email has an incorrect format 2' do
    user = described_class.new(email: 'alex@', password: 'timisoara')
    expect(user).not_to be_valid
  end

  it 'is invalid if password is shorter than 6 characters' do
    user = described_class.new(email: 'alex@alex.com', password: 'alex')
    expect(user).not_to be_valid
  end
end
