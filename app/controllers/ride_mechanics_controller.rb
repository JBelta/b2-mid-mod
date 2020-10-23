class RideMechanicsController < ApplicationController

  def create
    binding.pry
    @ride = Ride.where(ride_name: params["Ride"])
    @mechanic = Mechanic.where(id: params[:mechanic_id])
    RideMechanic.create(ride_id: @ride.id, mechanic_id: @mechanic.id)
  end
end
