require 'rails_helper'

describe "As a user" do
  describe "When I visit an amusment parks show page" do
    it "Has the name and price of admission for that park" do
      dz = AmusementPark.create(park_name: "Discovery Zone", price: 13)

      visit "/amusement_parks/#{dz.id}"

      expect(page).to have_content(dz.park_name)
      expect(page).to have_content(dz.price)
    end

    it "Has a list of all rides with an average thrill rating"
    dz = AmusementPark.create(park_name: "Discovery Zone", price: 13)

    the_rocket = dz.rides.create(ride_name: "The Rocket", thrill_rating: 10)

    go_round = dz.rides.create(ride_name: "Merry Go Round", thrill_rating: 3)

    visit "/amusement_parks/#{dz.id}"

    expect(page).to have_content(the_rocket.ride_name)
    expect(page).to have_content(go_round.ride_name)
    expect(page).to have_content(6.5)
  end
end
