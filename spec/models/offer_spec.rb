require 'rails_helper'

RSpec.describe Offer, type: :model do
  MyString = "This is a string"

  subject {
    described_class.new(
      name: MyString,
      description: MyString,
      phone: MyString,
      email: MyString,
      country: MyString,
      location: MyString,
      meals: MyString,
      price: 1.5,
      stars: 3,
      cleaning: 100,
      food: 50,
      staff: 100,
      confort: 50,
      host_name: MyString,
      minimum_stay: 5,
    )
  }

  it 'is valid if all attributes are present and validated' do
    expect(subject).to be_valid
  end

  it 'is invalid if name is missing' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if description is missing' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if phone is missing' do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if email is missing' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if country is missing' do
    subject.country = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if location is missing' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if meals is missing' do
    subject.meals = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if price is missing' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if stars is missing' do
    subject.stars = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if cleaning is missing' do
    subject.cleaning = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if food is missing' do
    subject.food = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if staff is missing' do
    subject.staff = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if confort is missing' do
    subject.confort = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if host_name is missing' do
    subject.host_name = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if minimum_stay is missing' do
    subject.minimum_stay = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if price is less than 1.0' do
    subject.price = 0.99
    expect(subject).to_not be_valid
  end

  it 'is invalid if stars is less than 1' do
    subject.stars = 0
    expect(subject).to_not be_valid
  end

  it 'is invalid if stars is greater than 1' do
    subject.stars = 6
    expect(subject).to_not be_valid
  end

  it 'is invalid if cleaning is less than 1' do
    subject.cleaning = -1
    expect(subject).to_not be_valid
  end

  it 'is invalid if cleaning is greater than 100' do
    subject.cleaning = 101
    expect(subject).to_not be_valid
  end

  it 'is invalid if food is less than 1' do
    subject.food = -1
    expect(subject).to_not be_valid
  end

  it 'is invalid if food is greater than 100' do
    subject.food = 101
    expect(subject).to_not be_valid
  end

  it 'is invalid if staff is less than 1' do
    subject.staff = -1
    expect(subject).to_not be_valid
  end

  it 'is invalid if staff is greater than 100' do
    subject.staff = 101
    expect(subject).to_not be_valid
  end

  it 'is invalid if confort is less than 1' do
    subject.confort = -1
    expect(subject).to_not be_valid
  end

  it 'is invalid if confort is greater than 100' do
    subject.confort = 101
    expect(subject).to_not be_valid
  end

  it 'is invalid if minimum_stay is less than 1' do
    subject.minimum_stay = 0
    expect(subject).to_not be_valid
  end

  it 'calculates correctly the rating' do
    expect(subject.get_rating(subject)).to eq 75
  end

end
