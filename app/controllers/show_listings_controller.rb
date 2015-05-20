class ShowListingsController < ApplicationController
  def new
    @show_listing = ShowListing.new
  end

  def create
    @show_listing = ShowListing.new(params.require(:show_listing).permit(:channel_id, :show_id, :date))
    @show_listing.save
    redirect_to show_path(@show_listing.show), notice: 'Show Listing Successfully Added'
  end
end
