require 'rails_helper'

describe "As a user" do
  describe "When I visit the mechanics index page" do
    it "Has a header with a mechanics name - years of experience" do
      mechanic_1 = Mechanic.create(name: 'Sal', years_of_experience: 8)
      mechanic_2 = Mechanic.create(name: 'Fred', years_of_experience: 3)

      visit "/mechanics"

      expect(page).to have_content("All Mechanics")
      expect(page).to have_content(mechanic_1.name)
      expect(page).to have_content(mechanic_1.years_of_experience)
      expect(page).to have_content(mechanic_2.name)
      expect(page).to have_content(mechanic_2.years_of_experience)

    end
  end
end
