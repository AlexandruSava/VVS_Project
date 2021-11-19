# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get contact' do
    get contact_url
    assert_response :success
  end
end
