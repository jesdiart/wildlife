class SightingsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.create(sighting_params)
    redirect_to animal_path(@animal)
  end
    
  def destroy
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.find(params[:id])
    if @sighting.destroy
      redirect_to animal_path(@animal)
    else 
      render :show
    end
  end
    
  private
    def sighting_params
      params.require(:sighting).permit(:spotter, :date, :latitude, :longitude)
  end  
end
