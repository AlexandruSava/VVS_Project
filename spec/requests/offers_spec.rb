 require 'rails_helper'

RSpec.describe "/offers", type: :request do

  let(:valid_attributes) {
    {
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
    }
  }

  let(:invalid_attributes) {
    {
      name: MyString,
      description: MyString,
      phone: MyString,
      email: MyString,
      country: MyString,
      location: MyString,
      meals: MyString,
      price: 1.5,
      stars: 10,
      cleaning: 101,
      food: -5,
      staff: 100,
      confort: 50,
      host_name: nil,
      minimum_stay: 0,
    }  }

  describe "GET /index" do
    it "renders a successful response" do
      Offer.create! valid_attributes
      get offers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      offer = Offer.create! valid_attributes
      get offer_url(offer)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_offer_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      offer = Offer.create! valid_attributes
      get edit_offer_url(offer)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Offer" do
        expect {
          post offers_url, params: { offer: valid_attributes }
        }.to change(Offer, :count).by(1)
      end

      it "redirects to the created offer" do
        post offers_url, params: { offer: valid_attributes }
        expect(response).to redirect_to(offer_url(Offer.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Offer" do
        expect {
          post offers_url, params: { offer: invalid_attributes }
        }.to change(Offer, :count).by(0)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          name: "This"
        }
      }

      it "updates the requested offer" do
        offer = Offer.create! valid_attributes
        patch offer_url(offer), params: { offer: new_attributes }
        offer.reload
        expect(response).to redirect_to(offer_url(offer))
      end

      it "redirects to the offer" do
        offer = Offer.create! valid_attributes
        patch offer_url(offer), params: { offer: new_attributes }
        offer.reload
        expect(response).to redirect_to(offer_url(offer))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        offer = Offer.create! valid_attributes
        patch offer_url(offer), params: { offer: invalid_attributes }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested offer" do
      offer = Offer.create! valid_attributes
      expect {
        delete offer_url(offer)
      }.to change(Offer, :count).by(-1)
    end

    it "redirects to the offers list" do
      offer = Offer.create! valid_attributes
      delete offer_url(offer)
      expect(response).to redirect_to(offers_url)
    end
  end
end
