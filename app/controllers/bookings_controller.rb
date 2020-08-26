class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @philosopher = Philosopher.find(params[:philosopher_id])
    end

    def create
        @philosopher = Philosopher.find(params[:philosopher_id])
        @user = current_user
        @booking = Booking.new(booking_params)
        @booking.philosopher = @philosopher
        @booking.user = @user
        if @booking.save
            flash[:notice] = 'You have successfully booked #{@philosopher_name}'
            redirect_to philosopher_path(@philosopher)
        else
            render :new
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:date)
    end
end
