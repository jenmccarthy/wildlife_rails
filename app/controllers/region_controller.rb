class RegionController < ApplicationController

  def index
    @region = Region.all
    render('regions/index.html.erb')
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

end
