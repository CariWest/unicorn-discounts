class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @reservation  = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save

    redirect_to reservations_path
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update(reservation_params)
      redirect_to reservation_path(@reservation)
    end
  end

  def destroy
    # Not Implemented Yet
  end

  def trip
    trip = Trip.find(params[:trip_id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:tour_tools_id,
                                        :organizer_name,
                                        :guest_count)
  end
end
