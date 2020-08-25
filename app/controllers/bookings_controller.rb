class BookingsController < ApplicationController
    before_action :set_booking, only: [:new, :create]

    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.save
        if @booking.save
            redirect_to philosopher_path(@philosopher)
          else
            render :new
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:user_id, :philosopher_id)
    end

    def set_booking
        @booking = Booking.find(params[:id])
    end
end
