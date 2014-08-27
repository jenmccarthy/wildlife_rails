class RegionController < ApplicationController

  def index
    @region = Region.all
    render('regions/index.html.erb')
  end

end
