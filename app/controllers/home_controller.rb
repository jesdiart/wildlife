class HomeController < ApplicationController
  def index
    @animals = Animal.all
    @regions = Region.all
    @last_sightings = Sighting.last(10)
  end
end
