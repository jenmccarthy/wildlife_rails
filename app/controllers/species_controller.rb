class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def new
    render('species/new.html.erb')
  end

  def create
    @species = Species.new(:name => params[:name])
    if @species.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end

end
