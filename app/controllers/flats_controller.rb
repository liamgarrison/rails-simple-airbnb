class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create!(flat_params)
    redirect_to flat_path(@flat)
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  def flat_params
    params
      .require(:flat)
      .permit(
        :name,
        :description,
        :address,
        :price_per_night,
        :number_of_guests,
        :photo_url
      )
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
