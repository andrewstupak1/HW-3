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

  @place.save
  
   if @place==nil
    redirect_to "/places/"
  else
    redirect_to "/places/#{@place["id"]}"
 #when debugging chat GPT suggested this line of code^
  end
end

end