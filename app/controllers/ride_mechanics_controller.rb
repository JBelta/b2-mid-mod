class RideMechanicsController < ApplicationController

  def create
    @ride = Ride.where(ride_name: params["Ride"])
    @mechanic = Mechanic.find(params[:mechanic_id])
    binding.pry
    RideMechanic.create(ride_id: @ride.first.id, mechanic_id: @mechanic.id)
    redirect_to "/mechanics/#{@mechanic.id}"
  end
end
