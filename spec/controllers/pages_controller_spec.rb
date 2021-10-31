require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "should GET contact page" do
    it 'returns a successful response' do
      get :contact
      expect(response).to be_successful
    end
  end
end
