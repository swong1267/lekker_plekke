class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @comment = Comment.new
  end

  def new
    @place = Place.new
  end

  def edit
    @place = Place.find(params[:id])
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to @place
    else
      render 'new'
    end
  end

  def update 
    @place = Place.find(params[:id])

    if @place.update(place_params)
      redirect_to @place
    else
      render 'edit'
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    redirect_to places_path
  end

  def like
    @place = Place.find(params[:place_id])
    #explain??? why not just :id ^^
    @place.likes += 1
    @place.save

    redirect_to places_path
  end

  private
    def place_params
      params.require(:place).permit(:name, :description, :location, :rating, :must_see)
      #include likes?
    end

end
