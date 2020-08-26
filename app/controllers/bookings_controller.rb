class BookingsController < ApplicationController
    def create
        @philosopher = Philosopher.find(:philosopher_id)
        @booking = Booking.new(booking_params)
        @booking.philosopher = @philosopher
        if @booking.save
            redirect_to philosopher_path(@philosopher)
        else
            @user = User.new
            render "philosophers/show"
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:user_id, :philosopher_id)
    end
end
