class ReservationsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @reservation = trip.reservations.new(reservation_params)
    @reservation.save

    redirect_to trip_path(trip)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def trip
    trip = Trip.find(params[:trip_id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:trip_id, :tour_tools_id, :organizer_name)
  end
end
