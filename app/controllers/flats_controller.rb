class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create!(flat_params)
    redirect_to flat_path(@flat)
  end

  def flat_params
    params
      .require(:flat)
      .permit(
        :name,
        :description,
        :address,
        :price_per_night,
        :number_of_guests
      )
  end
end
