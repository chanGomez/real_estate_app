class ListingsController < ApplicationController
  before_action :authenticate_user! #renders devise template to sign user in. 
  def index
    @listings = Listing.all
  end

  def show

  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def destroy

  end

  private

  def listing_params
     params.require(:listing).permit(:title, :content, :published_at)
  end

end