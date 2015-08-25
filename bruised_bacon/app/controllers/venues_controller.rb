class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end

	def show
		@venue = Venue.find(params[:id])
	end

	def edit
		@venue = Venue.find(params[:id])
	end

	def update
		venue = Venue.find(params[:id])
		venue.update(venue_params)
		redirect_to venues_path
	end

	def delete
		venue = Venue.find(params[:id])
		venue.destroy
		redirect_to venues_path
	end

	private

	def venue_params
		params.require(:venue).permit(:name, :city, :state, :family_friendly)
	end
end