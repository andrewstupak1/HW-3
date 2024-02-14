class PlacesController < ApplicationController
  def index
    @places = Place.all 
 end
end

def new
  @place = Place.new # Creates a new but unsaved Place object
end

def create
  @place = Place.new

  @place["place"] = params["place"]
  @place["description"] = params["description"]
  @place["location"] = params["location"]
  @place["date_visited"] = params["date_visited"]

   if @place.save
    redirect_to "/places/"
  else
    render :new, status: :unprocessable_entity 
 #when debugging chat GPT suggested this line of code^
  end
end




