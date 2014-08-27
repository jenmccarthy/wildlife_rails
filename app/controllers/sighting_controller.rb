class SightingController < ApplicationController

  def index
    @species = Species.find(params[:species_id])
    @sightings = Sighting.where(:species_id => @species.id)
    render('sightings/index.html.erb')
  end

  def new
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.create(params[:sighting])
    if @sighting.valid?
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sighting])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

end
