class AmusementPark < ApplicationRecord
  has_many :rides

  def thrill_scale
    rides.average(:thrill_rating).to_f
  end
end
