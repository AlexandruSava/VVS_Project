# frozen_string_literal: true

class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :description
      t.string :phone
      t.string :email
      t.string :country
      t.string :location
      t.string :meals
      t.string :host_name
      t.float :price
      t.integer :stars
      t.integer :rating
      t.integer :cleaning
      t.integer :food
      t.integer :staff
      t.integer :confort
      t.integer :minimum_stay

      t.timestamps
    end
  end
end
