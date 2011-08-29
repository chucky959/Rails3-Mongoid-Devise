class BeercommentsController < ApplicationController
  def create
  	@beer = Beer.find(params[:beer_id])
	@beercomment = @beer.beercomments.create!(params[:beercomment])
	redirect_to @beer, :notice => "Comment created!"
  end
end
