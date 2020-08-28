class PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show] 
    
    def index
        if params[:query].present?
           @philosophers = Philosopher.search_by_name_and_quote(params[:query])
        else
           @philosophers = Philosopher.all
        end
    end

    def show
        # @philosopher = Philosopher.find(params[:id])
        @booking = Booking.new
    end

    def new
        @philosopher = Philosopher.new
    end

    def create
        @philosopher = Philosopher.new(philosopher_params)
        current_user.role = "agent"
        current_user.save
        @philosopher.user_id = current_user.id
        if @philosopher.save
            redirect_to philosopher_path(@philosopher)
          else
            render 'new'
        end
    end

    def edit
    end

    def update
        @philosopher.update(philosopher_params)
        if @philosopher.save
            redirect_to philosophers_path
          else
            render :new
        end
    end

    def destroy
        @philosopher.destroy
        redirect_to new_philosopher_path
    end

    private
    def philosopher_params
        params.require(:philosopher).permit(:id, :name, :quote, :worth, :price)
    end

    def set_philosopher
        @philosopher = Philosopher.find(params[:id])
    end
end
