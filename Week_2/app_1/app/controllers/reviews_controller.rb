class ReviewsController < ApplicationController

	def create
    	@animal = Animal.find(params[:animal_id])
    	@review = @animal.reviews.create(review_params)
    	redirect_to animal_path(@animal)
  	end
 
  	private
    def review_params
      params.require(:review).permit(:reviewer, :body)
    end

end
