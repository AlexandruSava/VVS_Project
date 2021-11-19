# frozen_string_literal: true

json.extract! offer, :id, :name, :description, :phone, :email, :country, :location, :meals, :price, :stars, :rating,
              :cleaning, :food, :staff, :confort, :host_name, :minimum_stay, :created_at, :updated_at
json.url offer_url(offer, format: :json)
