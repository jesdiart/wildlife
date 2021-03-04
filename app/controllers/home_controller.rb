class HomeController < ApplicationController
  def index
    @animals = Animal.all
    @regions = Region.all
  end
end
