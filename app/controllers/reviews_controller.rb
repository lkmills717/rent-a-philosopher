class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @philosopher = Philosopher.find(params[:philosopher_id])
    end

    def create
        @philosopher = Philosopher.find(params[:philosopher_id])
        @user = current_user
        @review = Review.new(review_params)
        @review.philosopher = @philosopher
        @review.user = @user
        if @review.save
            flash[:notice] ="🎉 Thank you for reviewing #{@philosopher.name}!"
            redirect_to philosopher_path(@philosopher)
            # work on this more!!!
          else
            render :new
        end
    end

    private
    def review_params
        params.require(:review).permit(:content, :rating)
    end
end
