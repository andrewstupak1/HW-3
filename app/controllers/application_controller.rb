class ApplicationController < ActionController::Base
  def show
    @place = Place.find_by(id: params[:id])
  if @place.nil?
    redirect_to "/places"
  else
   end
  end
  #added when de-bugging
end
