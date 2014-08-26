class Sighting < ApplicationController

  def index
    @sightings = Sighting.where(:species_id => @species.id)
    render('species/sightings/index.html.erb')
  end

  def new
    @species = Species.find(params[:id])
    render('species/@species.id/sightings/new.html.erb')
  end

end
