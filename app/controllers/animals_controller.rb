class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to @animal
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])

    if @animal.update(animal_params)
      redirect_to @animal
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      redirect_to root_path
    else 
      render :show
    end
  end

  private
    def animal_params
      params.require(:article).permit(:title, :body, :status)
    end

end
