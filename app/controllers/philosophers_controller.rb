class PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:show, :edit, :update, :destroy]
    def index
        @philosophers = Philosopher.all 
    end

    def show
        @philosopher = Philosopher.find(params[:id])
    end

    def new
        @philosopher = Philosopher.new
    end

    def create
        @philosopher = Philosopher.new(philosopher_params)
        @philosopher.save
        if @philosopher.save
            redirect_to philosopher_path(@philosopher)
          else
            render :new
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
        params.require(:philosopher).permit(:id, :name, :quote)
    end

    def set_philosopher
        @philosopher = Philosopher.find(params[:id])
    end
end
