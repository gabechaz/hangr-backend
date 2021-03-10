class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        if review.id
            render json: review
        else
            render json: review.errors.full_messages
        end
    end

    private

    def review_params
        params.permit(:id, :image_url, :reviewee_id, :reviewer_id, :karma, :comment, :hang_id, :review)
    end

end
