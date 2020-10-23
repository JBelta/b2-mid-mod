require "rails_helper"

describe "As a user" do
  describe "When I go to a mechanics show page" do
    before :each do
      @joe = Mechanic.create(name: 'Joe', years_of_experience: 11)

      @dz = AmusementPark.create(park_name: "Discovery Zone", price: 13)

      @fh = AmusementPark.create(park_name: "Fun House", price: 8)

      @the_rocket = @dz.rides.create(ride_name: "The Rocket", thrill_rating: 10)
      @go_round = @dz.rides.create(ride_name: "Merry Go Round", thrill_rating: 3)

      @drop = @fh.rides.create(ride_name: "Elevator Drop", thrill_rating: 7)
      @loop = @fh.rides.create(ride_name: "Dooper Looper", thrill_rating: 9)

      RideMechanic.create(ride_id: @drop.id, mechanic_id: @joe.id)
      RideMechanic.create(ride_id: @loop.id, mechanic_id: @joe.id)
      RideMechanic.create(ride_id: @go_round.id, mechanic_id: @joe.id)
    end
    it "I see their name, years of experience and all the rides they worked on" do
      visit "/mechanics/#{@joe.id}"

      expect(page).to have_content(@joe.name)
      expect(page).to have_content(@joe.years_of_experience)
      expect(page).to have_content(@drop.ride_name)
      expect(page).to have_content(@loop.ride_name)
      expect(page).to have_content(@go_round.ride_name)
    end
  end
end
