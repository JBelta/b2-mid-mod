require 'rails_helper'

describe "As a user" do
  describe "When I visit an amusment parks show page" do
    it "Has the name and price of admission for that park"
    dz = AmusmentPark.create(name: "Discovery Zone", price: 13)

    visit "/amusment_parks/#{dz.id}"

    expect(page).to have_content(dz.name)
    expect(page).to have_content(dz.price)
  end
end
