class ReviewsController < ApplicationController
    before_action :set_review, only: [:new, :create]

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.save
        if @review.save
            redirect_to philosopher_path(@philosopher)
            # work on this more!!!
          else
            render :new
        end
    end

    private
    def review_params
        params.require(:review).permit(:content, :rating, :philosopher_id)
    end

    def set_review
        @review = Review.find(params[:id])
    end
end
