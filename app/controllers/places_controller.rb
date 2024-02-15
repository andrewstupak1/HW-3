class PlacesController < ApplicationController
  def index
    @places = Place.all 
  end 
  
def new
  @place = Place.new # Creates a new but unsaved Place object
end

def show
@place = Place.find_by({"id" => params["id"]})

end

def create
  @place = Place.new

  @place["name"] = params["place"]
  @place["date_visited"] = params["date_visited"]
  @place["description"] = params["description"]
  
   if @place.save
    redirect_to "/places/"
  else
    render :new, status: :unprocessable_entity 
 #when debugging chat GPT suggested this line of code^
  end
end

end