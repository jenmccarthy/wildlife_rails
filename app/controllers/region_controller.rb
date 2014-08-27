class RegionController < ApplicationController

  def index
    @region = Region.all
    render('regions/index.html.erb')
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

  def create
    @region = Region.create(params[:region])
    if @region.valid?
      render('regions/success.html.erb')
    else
      render('regions/new.html.erb')
    end
  end

end
