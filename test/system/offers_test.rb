# frozen_string_literal: true

require 'application_system_test_case'

class OffersTest < ApplicationSystemTestCase
  setup do
    @offer = offers(:one)
  end

  test 'visiting the index' do
    visit offers_url
    assert_selector 'h1', text: 'Offers'
  end

  test 'creating a Offer' do
    visit offers_url
    click_on 'New Offer'

    fill_in 'Cleaning', with: @offer.cleaning
    fill_in 'Confort', with: @offer.confort
    fill_in 'Country', with: @offer.country
    fill_in 'Description', with: @offer.description
    fill_in 'Email', with: @offer.email
    fill_in 'Food', with: @offer.food
    fill_in 'Host name', with: @offer.host_name
    fill_in 'Location', with: @offer.location
    fill_in 'Meals', with: @offer.meals
    fill_in 'Minimum stay', with: @offer.minimum_stay
    fill_in 'Name', with: @offer.name
    fill_in 'Phone', with: @offer.phone
    fill_in 'Price', with: @offer.price
    fill_in 'Rating', with: @offer.rating
    fill_in 'Staff', with: @offer.staff
    fill_in 'Stars', with: @offer.stars
    click_on 'Create Offer'

    assert_text 'Offer was successfully created'
    click_on 'Back'
  end

  test 'updating a Offer' do
    visit offers_url
    click_on 'Edit', match: :first

    fill_in 'Cleaning', with: @offer.cleaning
    fill_in 'Confort', with: @offer.confort
    fill_in 'Country', with: @offer.country
    fill_in 'Description', with: @offer.description
    fill_in 'Email', with: @offer.email
    fill_in 'Food', with: @offer.food
    fill_in 'Host name', with: @offer.host_name
    fill_in 'Location', with: @offer.location
    fill_in 'Meals', with: @offer.meals
    fill_in 'Minimum stay', with: @offer.minimum_stay
    fill_in 'Name', with: @offer.name
    fill_in 'Phone', with: @offer.phone
    fill_in 'Price', with: @offer.price
    fill_in 'Rating', with: @offer.rating
    fill_in 'Staff', with: @offer.staff
    fill_in 'Stars', with: @offer.stars
    click_on 'Update Offer'

    assert_text 'Offer was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Offer' do
    visit offers_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Offer was successfully destroyed'
  end
end
