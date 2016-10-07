class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      redirect_to bands_url
    else
      flash.now[:errors] = ["Please fill out all of the fields"]
      render :new
    end
  end

  def show
    @band = Band.find_by_id(params[:id])
    render :show
  end

  private
  def band_params
    params.require(:band).permit(:name)
  end
end
