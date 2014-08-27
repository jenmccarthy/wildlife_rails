class SightingController < ApplicationController

  def index
    if params[:region_id] == nil
      @species = Species.find(params[:species_id])
      @sightings = Sighting.where(:species_id => @species.id)
      render('sightings/index.html.erb')
    elsif params[:species_id] == nil
      @region = Region.find(params[:region_id])
      @sightings = Sighting.where(:region_id => @region.id)
      render('sightings/index.html.erb')
    end
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

  def delete
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end


end
