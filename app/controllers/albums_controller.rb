class AlbumsController < ApplicationController
  def index
    @albums = Album.where(band_id: params[:band_id])
    render :index
  end

  def show
    @album = Album.find_by_id(:id)
    render :show
  end

  def new
    @bands = Band.all
    @band = Band.find_by_id(params[:band_id])
    render :new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to band_url(album_params[:band_id])
    else
      flash.now[:errors] = ["Please fill out all of the fields"]
      render :new
    end
  end

  private
  def album_params
    params.require(:album).permit(:name, :band_id, :album_type)
  end
end
