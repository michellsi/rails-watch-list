class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    @review.save

    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
